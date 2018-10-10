PROGRAM Quadratic

IMPLICIT NONE

CHARACTER(len=12) :: arg 
INTEGER :: i, d
INTEGER, DIMENSION(0:2) :: standardFormCoefficients

CALL userInput(standardFormCoefficients)

do d = 0, 2
    WRITE(*,*) standardFormCoefficients(d)
end do


CONTAINS 
    SUBROUTINE userInput(standardFormCoefficients)
        INTEGER,DIMENSION(0:2), intent(out) :: standardFormCoefficients ! Output variable
        do i = 1, 3
            CALL getarg(i, arg)
            write(*,*) "INPUT", arg
            READ(arg, *) standardFormCoefficients(i-1)
        END DO
    END SUBROUTINE userInput
END PROGRAM Quadratic