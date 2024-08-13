SUBROUTINE LEEDATOS
USE mDATA

CHARACTER (LEN=10) :: DatosName, DatosRes 
INTEGER :: i, TipoN

WRITE (*,*) 'ESCRIBE EL NOMBRE DEL ARCHIVO DE DATOS: '
READ (*,*) DatosName

WRITE (*,*) 'ESCRIBE EL NOMBRE DEL ARCHIVO DE RESULTADOS: '
READ (*,*) DatosRes

OPEN (UNIT=55, FILE=DatosName)
OPEN (UNIT=66, FILE=DatosRes)

READ (55,*) Sbase, n, e

!***** DAMOS TAMA�O A LAS VARIABLES *****
ALLOCATE ( TipoE(e), p(e), q(e), zpq(e), yppqs2(e), EN(n), Ep(n), SGen(n), Scarga(n) )
!***** INICIALOZAMOS LAS VARIABLES *****
yppqs2 = 0.0
SGen =0.0
Scarga = 0.0
EN = 0.0
Ep = 0.0

DO i=1,e
	READ (55,*) p(i), q(i), zpq(i), TipoE(i)
	IF ( TipoE(i) .EQ. 1 ) THEN	
		READ (55,*) yppqs2(i)
	END IF
END DO

DO i=1, n
	READ (55,*) EN(i), TipoN
	Ep(i) = EN(i)

	IF ( TipoN .NE. 1 ) THEN
		READ (55,*) SGen(i), Scarga(i)
	ELSE
		Slack = i
	END IF
END DO

READ (55,*) imax, tol, Faa

END SUBROUTINE LEEDATOS