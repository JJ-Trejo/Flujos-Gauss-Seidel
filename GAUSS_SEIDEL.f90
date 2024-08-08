SUBROUTINE GAUSS_SEIDEL

USE mDATA
IMPLICIT NONE

logical :: condicion1= .false. !Se inicializan las condiciones 1 y 2 como falsas										   
logical :: condicion2= .false. !Se inicializan las condiciones 1 y 2 como falsas
INTEGER :: K, pi, qi  !K es un contador de iteraciones, pi y qi son apuntadores 
COMPLEX :: SUMA  = 0.0
COMPLEX :: SUMA1 = 0.0
COMPLEX :: SUMA2 = 0.0
COMPLEX :: MaxDeltaEp = 0.0
ALLOCATE ( Epacel(n), Epk(n) )
Epk = 0.0
Epacel = 0.0 
k=0
DeltaEp = 0.0
EpTemp = 0.0

!condicion1: cuando k .EQ. imax , es decir, cuando se alcance el máximo numero de iteraciones
!condicion2: cuando MaxDeltaEp < tol, es decir, cuando la tolerancia sea alcanzada
DO while( .not. (condicion1 .or. condicion2) ) !termina cuando cualquiera d elas condicones sea verdadera

	MaxDeltaEp=0.0 !En cada iteración se inicializa en ceros

	WRITE (66,20) K+1, k
	WRITE ( *,20) K+1, k
	20 FORMAT ( /, ' ITERACION :' , I3 , 3X , 'k: ' , I3, /, ' NODO', 9X, 'Ep(pi) anterior', 15X, ' Ep(pi) acelerado', 8X, ' D E S V I A C I O N' )

	DO pi=1, n !Para cada iteracion se modifican todos los nodos, excepto el slack 

		!inicializamos las variables
		SUMA  = 0.0
		SUMA1 = 0.0
		SUMA2 = 0.0
		DeltaEp = 0.0
		EpTemp = 0.0

		!si el nodo "pi" es diferente al nodo slack
		IF ( pi .NE. Slack ) THEN													
			
			DO qi=1, pi-1
				SUMA1 = SUMA1 + YL(pi,qi)*Ep(qi) 
			END DO

			DO qi=pi+1, n
				SUMA2 = SUMA2 + YL(pi,qi)*Ep(qi)
			END DO

			SUMA = ( KL(pi)/CONJG(Ep(pi)) ) - SUMA1 - SUMA2
			EpTemp = Ep(pi)!se copia el valor de ep antes del cambio 
			Ep(pi) = SUMA  !se actualiza el valor de Ep por Ep(k+1) (VOLTAJE SIN ACELERAR)						 			
			DeltaEp = Ep(pi) - EpTemp !cambio en el voltaje: Ep(k+1) - Ep
			Epacel(pi) = EpTemp + (Faa * DeltaEp) !VOLTAJE ACELERADO			
			Ep(pi) = Epacel(pi) !se actualiza (reescribe en Ep) al valor acelerado 
							 				
			WRITE (66,21) pi, EpTemp, Epacel(pi), DeltaEp
			WRITE ( *,21) pi, EpTemp, Epacel(pi), DeltaEp
			21 FORMAT ( I3, 5X, F10.5, '+ j', F10.5, X, F15.5 '+ j', F15.5, X, F10.5, '+ j', F10.5 )
			
			!Si el valor de DeltaEp es mayor que MaxDeltaEp del nodo anterior
			if ( abs(DeltaEp) > abs(MaxDeltaEp) ) THEN 
				MaxDeltaEp = DeltaEp
			end if

		END IF

	END DO

	k=k+1 !Se le suma 1 a la iteración "k"

	!Si "k" llega a ser igual al numero maximo de iteraciones "imax"
	IF( k .EQ. imax ) THEN
		condicion1= .true. !la condicion 1 se vuelve verdadera y se termina el ciclo DO While
		WRITE(66,22)
		WRITE( *,22)
		22 FORMAT ( 'NO CONVERGE' ) !el ciclo terminó porque se llegó al limite de iteraciones
	END IF
	!print *, 'MaxDeltaEp: ', MaxDeltaEp, ' tol: ', tol

	!Si "MaxDeltaEp" es menor que la tolerancia "tol" 
    IF( abs(real(MaxDeltaEp)) < tol ) THEN
		condicion2= .true. !la condicion 2 se vuelve verdadera y se termina el ciclo DO While
		WRITE(66,23)
		WRITE( *,23)
		23 FORMAT ( '*****EL SISTEMA CONVERGE*****' ) !el ciclo termino porque se supero la tolerancia establecida
	END IF

END DO

CLOSE(66) !Se cierra el archivo de resultados para evitar cualquier problema con escritra

END SUBROUTINE