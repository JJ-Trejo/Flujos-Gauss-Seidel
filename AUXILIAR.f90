SUBROUTINE AUXILIAR

USE mDATA

IMPLICIT NONE
INTEGER :: i,j

!***** PARAMETROS AUXILIARES *****

ALLOCATE ( Sneta(n), KL(n), YL(n,n) )

Sneta = 0.0
KL = 0.0
YL = 0.0

WRITE (66,14)
WRITE ( *,14)
14 FORMAT ( 2/,'<< PARAMETROS AUXILIARES >>', /, ' PARAMETROS KLp' / )

DO i=1, n

	IF (i .NE. Slack) THEN
		Sneta (i) = SGen(i) - Scarga(i)
		KL(i) = ( CONJG(Sneta(i)) / Ybus(i,i))
		WRITE (66,15) i, KL(i)
		WRITE ( *,15) i, KL(i)

	END IF 

END DO

15 FORMAT ( ' KL (', I3, ') = ', 1F8.5,'+j',1F8.5  )

WRITE (66,16)
WRITE ( *,16)
16 FORMAT ( 2/,' PARAMETROS YLpq' / )

!Recorre todos los elementos y se va llenando el arreglo YL
DO i=1,e

	YL(p(i), q(i)) = Ybus(p(i),q(i))/Ybus(p(i),p(i))
	YL(q(i), p(i)) = Ybus(q(i),p(i))/Ybus(q(i),q(i))

END DO

!Imprime con formato YLpq
DO i=1, n
	DO j=1, n
		IF (YL(i, j) .NE. 0.0) THEN !Si el valor del arreglo seleccionado es diferente de cero, se imprime
			WRITE (66,17) i,j, YL(i, j)
			WRITE ( *,17) i,j, YL(i, j)
		END IF
	END DO
END DO

17 FORMAT ( ' YL (', I3, ',', I3, ') = ', 1F8.5, '+j', 1F8.5)

!***** INICIA METODO DE GAUSS-SEIDEL *****
CALL GAUSS_SEIDEL

END SUBROUTINE