SUBROUTINE PORTADA
USE mDATA

INTEGER :: i

PRINT *
!WRITE (*,*) 'LLEGUE A RUTINA PORTADA'
WRITE (66,10) n, e
WRITE ( *,10) n, e 
10 FORMAT ( ' FLUJOS >> PROGRAMA PARA ESTUDIOS DE FLUJOS DE CARGA EN REDES DE POTENCIA', /, &
            ' **METODO DE GAUSS SEIDEL**', /, ' VERSION 1.0', /, ' 01/08/2024 ' , 2/, ' Ing. JOSE DE JESUS TREJO MENDEZ', 2/ , &
			' V A L O R E S  E N T R A D O S  C O M O  D A T O S', /, &
			' NUMERO DE NODOS     = ', I3, /, &
			' NUMERO DE ELEMENTOS  = ', I3, 2/, &
			20X, ' IMPEDANCIAS Y ADMITANCIAS PRIMITIVAS', /,&
			24X, ' ( v a l o r e s  e n  p. u. )', /, 17X, 'N O D O', / &
			' ELEMENTO', 3X, 'SALIDA', 3X, 'LLEGADA', 5X, 'IMPEDANCIA SEIRE', 10X 'Ypq / 2',/ )
DO i=1, e

	WRITE (66,11) i, p(i), q(i), zpq(i), yppqs2(i)
	WRITE ( *,11) i, p(i), q(i), zpq(i), yppqs2(i)	

END DO

11 FORMAT ( 2X, I3, 7X, I3, 7X, I3, &
            8X, 1F6.5,'+j',1F6.5, &
			8X, 1F6.5,'+j',1F6.5 )

WRITE (66,12) Sbase, Slack, imax, tol, Faa
WRITE ( *,12) Sbase, Slack, imax, tol, Faa

12 FORMAT ( /, ' >> CONDICIONES DE LA SIMULACION <<',2/, &
            ' POTENCIA BASE              =', F8.2, /, &
			' NODO COMPENSADOR           =', I3, /,   &
			' NO. DE ITERACIONES MAX.    =', I3, /,   &
			' TOLERANCIA DE CONVERGENCIA =', 1F8.5, /, &
			' FACTOR DE ACELERACION      =', F8.3, 2/, &
			20X, ' D A T O S  D E  L O S  N O D O S ',/, &
			24X, ' < valores en por unidad >', /, &
			' NODO', &
			8X, ' VOLTAJE', &
			8X, ' POTENCIA DE GENERACION', &
			3X, ' POTENCIA DE CARGA'  )

DO i=1, n
	WRITE (66,13) i, EN(i), SGen(i), Scarga(i)
	WRITE ( *,13) i, EN(i), SGen(i), Scarga(i)
END DO

13 FORMAT ( I3, 5X, 1F8.5,'+j',1F8.5, 4X, 1F8.5,'+j',1F8.5, 7X, 1F8.5,'+j',1F8.5     )

WRITE (66,*)
WRITE ( *,*)

END SUBROUTINE