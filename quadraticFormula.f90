PROGRAM Quadratic

IMPLICIT NONE

CHARACTER(len=12) :: arg 
INTEGER :: i, d 
INTEGER, DIMENSION(0:2) :: standardFormCoefficients
COMPLEX, DIMENSION(2) :: roots
CALL userInput(standardFormCoefficients)

do d = 0, 2
    WRITE(*,*) standardFormCoefficients(d)
end do

CONTAINS
 
    SUBROUTINE userInput(standardFormCoefficients)
        INTEGER,DIMENSION(0:2), intent(out) :: standardFormCoefficients ! Output variable
        do i = 1, 3
            CALL getarg(i, arg)
            READ(arg, *) standardFormCoefficients(i-1)
        END DO
    END SUBROUTINE userInput

    COMPLEX FUNCTION quadraticFormula(roots, a,b,c)
        INTEGER, intent(in) :: a,b,c
        COMPLEX, DIMENSION(2) :: roots
        !do i=0,5
        !end do
    END FUNCTION quadraticFormula

END PROGRAM Quadratic