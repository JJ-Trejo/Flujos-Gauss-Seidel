 FLUJOS >> PROGRAMA PARA ESTUDIOS DE FLUJOS DE CARGA EN REDES DE POTENCIA
 **METODO DE GAUSS SEIDEL**
 VERSION 1.0
 01/08/2024 

 Ing. JOSE DE JESUS TREJO MENDEZ

 V A L O R E S  E N T R A D O S  C O M O  D A T O S
 NUMERO DE NODOS     =   5
 NUMERO DE ELEMENTOS  =   7

                     IMPEDANCIAS Y ADMITANCIAS PRIMITIVAS
                         ( v a l o r e s  e n  p. u. )
                 N O D O
 ELEMENTO   SALIDA   LLEGADA     IMPEDANCIA SEIRE          Ypq / 2

    1         1         2        .02000+j.06000        .00000+j.03000
    2         1         3        .08000+j.24000        .00000+j.02500
    3         2         3        .06000+j.18000        .00000+j.02000
    4         2         4        .06000+j.18000        .00000+j.02000
    5         2         5        .04000+j.12000        .00000+j.01500
    6         3         4        .01000+j.03000        .00000+j.01000
    7         4         5        .08000+j.24000        .00000+j.02500

 >> CONDICIONES DE LA SIMULACION <<

 POTENCIA BASE              =  100.00
 NODO COMPENSADOR           =  1
 NO. DE ITERACIONES MAX.    = 15
 TOLERANCIA DE CONVERGENCIA =  .00010
 FACTOR DE ACELERACION      =   1.400

                     D A T O S  D E  L O S  N O D O S 
                         < valores en por unidad >
 NODO         VOLTAJE         POTENCIA DE GENERACION    POTENCIA DE CARGA
  1      1.00000+j  .00000      .00000+j  .00000         .00000+j  .00000
  2      1.00000+j  .00000      .40000+j  .30000         .20000+j  .10000
  3      1.00000+j  .00000      .00000+j  .00000         .45000+j  .15000
  4      1.00000+j  .00000      .00000+j  .00000         .40000+j  .05000
  5      1.00000+j  .00000      .00000+j  .00000         .60000+j  .10000
 



     MATRIZ DE ADMITANCIAS NODALES Ybus

        Ybus(  1,  1) =           6.25000   -18.69500
        Ybus(  1,  2) =          -5.00000    15.00000
        Ybus(  1,  3) =          -1.25000     3.75000
        Ybus(  2,  2) =          10.83333   -32.41500
        Ybus(  2,  3) =          -1.66667     5.00000
        Ybus(  2,  4) =          -1.66667     5.00000
        Ybus(  2,  5) =          -2.50000     7.50000
        Ybus(  3,  3) =          12.91667   -38.69500
        Ybus(  3,  4) =         -10.00000    30.00000
        Ybus(  4,  4) =          12.91667   -38.69500
        Ybus(  4,  5) =          -1.25000     3.75000
        Ybus(  5,  5) =           3.75000   -11.21000


<< PARAMETROS AUXILIARES >>
 PARAMETROS KLp

 KL (  2) =   .00740+j  .00370
 KL (  3) =  -.00698+j -.00930
 KL (  4) =  -.00427+j -.00891
 KL (  5) =  -.02413+j -.04545


 PARAMETROS YLpq

 YL (  1,  2) =  -.80212+j  .00071
 YL (  1,  3) =  -.20053+j  .00018
 YL (  2,  1) =  -.46263+j  .00036
 YL (  2,  3) =  -.15421+j  .00012
 YL (  2,  4) =  -.15421+j  .00012
 YL (  2,  5) =  -.23131+j  .00018
 YL (  3,  1) =  -.09690+j  .00004
 YL (  3,  2) =  -.12920+j  .00006
 YL (  3,  4) =  -.77518+j  .00033
 YL (  4,  2) =  -.12920+j  .00006
 YL (  4,  3) =  -.77518+j  .00033
 YL (  4,  5) =  -.09690+j  .00004
 YL (  5,  2) =  -.66881+j  .00072
 YL (  5,  4) =  -.33440+j  .00036

 ITERACION :  1   k:   0
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2        1.00000+ j    .00000         1.01367+ j         .00407     .00976+ j    .00291
  3        1.00000+ j    .00000          .99449+ j        -.01288    -.00394+ j   -.00920
  4        1.00000+ j    .00000          .99230+ j        -.02632    -.00550+ j   -.01880
  5        1.00000+ j    .00000          .97990+ j        -.07366    -.01435+ j   -.05261

 ITERACION :  2   k:   1
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2        1.01367+ j    .00407          .99866+ j        -.02990    -.01072+ j   -.02426
  3         .99449+ j   -.01288          .98539+ j        -.04237    -.00650+ j   -.02106
  4         .99230+ j   -.02632          .97967+ j        -.06385    -.00903+ j   -.02681
  5         .97990+ j   -.07366          .96256+ j        -.09191    -.01239+ j   -.01304

 ITERACION :  3   k:   2
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .99866+ j   -.02990          .99466+ j        -.03696    -.00286+ j   -.00505
  3         .98539+ j   -.04237          .97410+ j        -.07238    -.00806+ j   -.02144
  4         .97967+ j   -.06385          .96883+ j        -.08504    -.00774+ j   -.01513
  5         .96256+ j   -.09191          .95877+ j        -.10133    -.00271+ j   -.00673

 ITERACION :  4   k:   3
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .99466+ j   -.03696          .99032+ j        -.04829    -.00310+ j   -.00809
  3         .97410+ j   -.07238          .96556+ j        -.08520    -.00610+ j   -.00916
  4         .96883+ j   -.08504          .96225+ j        -.09375    -.00470+ j   -.00623
  5         .95877+ j   -.10133          .95237+ j        -.11201    -.00457+ j   -.00763

 ITERACION :  5   k:   4
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .99032+ j   -.04829          .98681+ j        -.05197    -.00251+ j   -.00263
  3         .96556+ j   -.08520          .96094+ j        -.09014    -.00330+ j   -.00353
  4         .96225+ j   -.09375          .95820+ j        -.09774    -.00289+ j   -.00285
  5         .95237+ j   -.11201          .94879+ j        -.11287    -.00256+ j   -.00062

 ITERACION :  6   k:   5
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .98681+ j   -.05197          .98523+ j        -.05273    -.00113+ j   -.00054
  3         .96094+ j   -.09014          .95799+ j        -.09261    -.00211+ j   -.00177
  4         .95820+ j   -.09774          .95576+ j        -.09910    -.00174+ j   -.00097
  5         .94879+ j   -.11287          .94736+ j        -.11404    -.00102+ j   -.00083

 ITERACION :  7   k:   6
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .98523+ j   -.05273          .98425+ j        -.05363    -.00070+ j   -.00064
  3         .95799+ j   -.09261          .95627+ j        -.09326    -.00122+ j   -.00046
  4         .95576+ j   -.09910          .95447+ j        -.09959    -.00092+ j   -.00036
  5         .94736+ j   -.11404          .94627+ j        -.11467    -.00078+ j   -.00045

 ITERACION :  8   k:   7
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .98425+ j   -.05363          .98366+ j        -.05373    -.00043+ j   -.00007
  3         .95627+ j   -.09326          .95542+ j        -.09357    -.00061+ j   -.00022
  4         .95447+ j   -.09959          .95378+ j        -.09984    -.00049+ j   -.00018
  5         .94627+ j   -.11467          .94573+ j        -.11466    -.00038+ j    .00001

 ITERACION :  9   k:   8
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .98366+ j   -.05373          .98340+ j        -.05380    -.00019+ j   -.00005
  3         .95542+ j   -.09357          .95496+ j        -.09374    -.00033+ j   -.00012
  4         .95378+ j   -.09984          .95342+ j        -.09994    -.00026+ j   -.00007
  5         .94573+ j   -.11466          .94551+ j        -.11481    -.00016+ j   -.00011

 ITERACION : 10   k:   9
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .98340+ j   -.05380          .98325+ j        -.05388    -.00010+ j   -.00005
  3         .95496+ j   -.09374          .95472+ j        -.09380    -.00017+ j   -.00004
  4         .95342+ j   -.09994          .95325+ j        -.10000    -.00013+ j   -.00004
  5         .94551+ j   -.11481          .94536+ j        -.11485    -.00011+ j   -.00003

 ITERACION : 11   k:  10
 NODO         Ep(pi) anterior                Ep(pi) acelerado         D E S V I A C I O N
  2         .98325+ j   -.05388          .98318+ j        -.05389    -.00006+ j   -.00001
  3         .95472+ j   -.09380          .95461+ j        -.09384    -.00008+ j   -.00003
  4         .95325+ j   -.10000          .95316+ j        -.10004    -.00006+ j   -.00003
  5         .94536+ j   -.11485          .94529+ j        -.11487    -.00005+ j   -.00001

*****EL SISTEMA CONVERGE*****

 Nodo compensador   1

 Codigo de Bus   FLUJOS DE POTENCIA
    p - q        Megawatts  Megavars
 (  1,  2) =        89.2    -4.7
 (  1,  3) =        40.9     2.8
 (  2,  1) =       -87.6     3.6
 (  2,  3) =        24.7     4.2
 (  2,  4) =        28.0     3.7
 (  2,  5) =        55.0     8.5
 (  3,  1) =       -39.5    -3.5
 (  3,  2) =       -24.3    -6.8
 (  3,  4) =        19.0    -4.6
 (  4,  2) =       -27.5    -6.0
 (  4,  3) =       -18.9     2.9
 (  4,  5) =         6.3    -1.9
 (  5,  2) =       -53.7    -7.5
 (  5,  4) =        -6.3    -2.6

 La potencia del nodo compensador se obtiene sumando los flujos de las lineas que salen de ese bus

 Potencia Real =    130.1 MW
 Potencia Reactiva =     -1.9 MVAR

