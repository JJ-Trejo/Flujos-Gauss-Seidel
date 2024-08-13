SUBROUTINE INSPECCION

USE mDATA

IMPLICIT NONE
!nombre	    funci�n/tipo
! nodo      contador de nodos/INTEGER
! ele       contador de elemento/INTEGER
! nodo1     INTEGR
! nodo2   	INTEGER

INTEGER :: nodo, ele, nodo1, nodo2 !variables usadas para iteracion solamente

PRINT *
!PRINT *, 'LLEGUE A RUTINA DE INSPECCION'

!DAMOS TAMANIO A LAS SIGUIENTES MATRICES (DECLARADAS EN mDATA)
ALLOCATE (Ybus(n,n))

!INICIALIZAMOS Ybus EN CERO
Ybus = (0.0,0.0)

!*******LLENA LA DIAGONAL PRINCIPAL DE YBUS*******

DO nodo=1,n
	DO	ele=1,e
		!EJEMPLO
		!     p(1)=1  =    1          q(1)=2  =    1
		!ES DECIR, SI p o q SON IGUAL AL NODO, QUIERE DECIR QUE ESTA
		!EL ELEMENTO ENTRE LOS PUNTOS pq SI ESTA CONECTADO AL NODO  
		IF ( (p(ele) .EQ. nodo) .OR. (q(ele) .EQ. nodo) ) THEN
			!RECORDEMOS QUE (1.0/zpq(ele)) es la admitancia del elemento
			Ybus(nodo,nodo)=Ybus(nodo,nodo)+(1.0/zpq(ele))
			!SI EL ELEMENTO TIENE ADMITANCIA EN DERIVACION yppqs2(ele)
			IF (tipoE(ele) .EQ. 1) THEN
				Ybus(nodo,nodo)=Ybus(nodo,nodo) + yppqs2(ele)
				
			END IF 
		END IF					   
	END DO
END DO

!*******LLENA LOS ELEMENTOS FUERA DE LA DIAGONAL PRINCIPAL DE YBUS*******

DO nodo1=1, n-1
!EJEMPLO: nodo2=2,
	DO nodo2=nodo1+1, n
		DO ele=1,e
			IF( (p(ele) .EQ. nodo1) .AND. (q(ele) .EQ. nodo2) ) THEN
			Ybus(nodo1, nodo2) = Ybus(nodo1, nodo2) - (1.0/zpq(ele))
			!RECORDEMOS QUE ES UNA MATRIZ SIMETRICA, POR LO QUE Ybus(1,2)=Ybus(2,1)
			Ybus(nodo2,nodo1) = Ybus(nodo1, nodo2)
			END IF
		END DO
	END DO
END DO

!*******IMPRIMIE CON FORMATO Ybus*******

WRITE (66,5) !ESCRIBE EN EL ARCHIVO DE RESULTADOS
WRITE ( 6,5) !ESCRIBE EN LA PANTALLA

5 FORMAT ( 3/, 5X, 'MATRIZ DE ADMITANCIAS NODALES Ybus', 2X, / )

DO nodo1=1, n
	DO nodo2=nodo1,n

		IF( Ybus(nodo1, nodo2) .NE. (0.0,0.0)) THEN
			WRITE (66,10) nodo1, nodo2, Ybus(nodo1, nodo2)
			WRITE ( 6,10) nodo1, nodo2, Ybus(nodo1, nodo2)

			10 FORMAT ( 8X, 'Ybus(', I3, ',' i3, ') = ', 5X, 5F12.5, 3X, '+j', F11.5 )
		END IF
	END DO
END DO

END SUBROUTINE INSPECCION