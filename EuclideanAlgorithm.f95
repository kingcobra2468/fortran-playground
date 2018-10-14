PROGRAM euclideanAlgorithm

IMPLICIT NONE

INTEGER :: i
CHARACTER(len=12) :: arg 
INTEGER, DIMENSION(0:1) :: standardFormCoefficients


CALL userInput(standardFormCoefficients)
WRITE (*,*) "GREATEST COMMON FACTER: ", GCD(standardFormCoefficients(0),standardFormCoefficients(1))

CONTAINS
    SUBROUTINE userInput(standardFormCoefficients)
        INTEGER ,DIMENSION(0:1), intent(out) :: standardFormCoefficients ! Output variable
        DO i = 1, 2
            CALL getarg(i, arg)
            READ(arg, *) standardFormCoefficients(i-1)
        END DO
    END SUBROUTINE userInput

   
    INTEGER FUNCTION GCD(numOne, numTwo)
        INTEGER, INTENT(out) :: numOne, numTwo
        INTEGER :: temp1, temp2
        DO WHILE(numTwo.ne.0)
            temp2  = mod(numOne, numTwo)
            IF(numOne/numTwo.eq.1) THEN
                temp1 = numOne - mod(numOne, numTwo)
            ELSE
                temp1 = (numOne - mod(numOne, numTwo))/(numOne/numTwo)
            ENDIF
            numOne = temp1
            numTwo = temp2
        ENDDO
        GCD = numOne
    END FUNCTION GCD

END PROGRAM euclideanAlgorithm