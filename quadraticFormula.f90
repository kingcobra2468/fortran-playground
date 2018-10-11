PROGRAM Quadratic

IMPLICIT NONE

CHARACTER(len=12) :: arg 
INTEGER :: i
REAL, DIMENSION(0:2) :: standardFormCoefficients
CALL userInput(standardFormCoefficients)
PRINT * , quadraticFormula(standardFormCoefficients(0),standardFormCoefficients(1),standardFormCoefficients(2))

CONTAINS
    SUBROUTINE userInput(standardFormCoefficients)
        REAL,DIMENSION(0:2), intent(out) :: standardFormCoefficients ! Output variable
        do i = 1, 3
            CALL getarg(i, arg)
            READ(arg, *) standardFormCoefficients(i-1)
        END DO
    END SUBROUTINE userInput
    FUNCTION quadraticFormula( a,b,c)
        REAL, intent(in) :: a,b,c
        COMPLEX, dimension(0:1) :: quadraticFormula
        if(b**2-(4*a*c).ge.0) then
            quadraticFormula(0) = CMPLX(((-1*b)+SQRT(b**2-(4*a*c)))/2*a, 0)
            quadraticFormula(1) = CMPLX(((-1*b)-SQRT(b**2-(4*a*c)))/2*a, 0)
        else
            quadraticFormula(0) = CMPLX((-1*b)/2*a,(SQRT(-1*(b**2-(4*a*c))))/2*a)
            quadraticFormula(1) = CMPLX((-1*b)/2*a,-1*(SQRT(-1*(b**2-(4*a*c))))/2*a)
        end if
        
    END FUNCTION quadraticFormula
END PROGRAM Quadratic