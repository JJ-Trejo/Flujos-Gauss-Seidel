MODULE mDATA

REAL :: Sbase, Faa, tol
INTEGER :: n, e, Slack, imax
INTEGER, ALLOCATABLE :: p(:), q(:), TipoE(:)
COMPLEX, ALLOCATABLE :: zpq(:), yppqs2(:) 
COMPLEX, ALLOCATABLE :: EN(:), Ep(:), SGen (:), Scarga(:)
COMPLEX, ALLOCATABLE :: Ybus(:,:)

COMPLEX, ALLOCATABLE :: Sneta(:), KL(:), YL(:,:)
COMPLEX :: EpTemp, DeltaEp
COMPLEX, ALLOCATABLE :: Epacel(:), Epk(:)

END MODULE mDATA