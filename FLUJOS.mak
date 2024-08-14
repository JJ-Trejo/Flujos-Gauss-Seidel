# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=FLUJOS - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to FLUJOS - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FLUJOS - Win32 Release" && "$(CFG)" != "FLUJOS - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "FLUJOS.mak" CFG="FLUJOS - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FLUJOS - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "FLUJOS - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "FLUJOS - Win32 Debug"
RSC=rc.exe
F90=fl32.exe

!IF  "$(CFG)" == "FLUJOS - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\FLUJOS.exe"

CLEAN : 
	-@erase ".\FLUJOS.exe"
	-@erase ".\AUXILIAR.obj"
	-@erase ".\LEEDATOS.obj"
	-@erase ".\GAUSS_SEIDEL.obj"
	-@erase ".\FLUJOS.obj"
	-@erase ".\mDATA.obj"
	-@erase ".\INSPECCION.obj"
	-@erase ".\PORTADA.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x80a /d "NDEBUG"
# ADD RSC /l 0x80a /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/FLUJOS.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/FLUJOS.pdb" /machine:I386 /out:"$(OUTDIR)/FLUJOS.exe" 
LINK32_OBJS= \
	"$(INTDIR)/AUXILIAR.obj" \
	"$(INTDIR)/LEEDATOS.obj" \
	"$(INTDIR)/GAUSS_SEIDEL.obj" \
	"$(INTDIR)/FLUJOS.obj" \
	"$(INTDIR)/mDATA.obj" \
	"$(INTDIR)/INSPECCION.obj" \
	"$(INTDIR)/PORTADA.obj"

"$(OUTDIR)\FLUJOS.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FLUJOS - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\FLUJOS.exe"

CLEAN : 
	-@erase ".\FLUJOS.exe"
	-@erase ".\AUXILIAR.obj"
	-@erase ".\LEEDATOS.obj"
	-@erase ".\GAUSS_SEIDEL.obj"
	-@erase ".\FLUJOS.obj"
	-@erase ".\mDATA.obj"
	-@erase ".\INSPECCION.obj"
	-@erase ".\PORTADA.obj"
	-@erase ".\FLUJOS.ilk"
	-@erase ".\FLUJOS.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"FLUJOS.pdb" 
# ADD BASE RSC /l 0x80a /d "_DEBUG"
# ADD RSC /l 0x80a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/FLUJOS.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/FLUJOS.pdb" /debug /machine:I386 /out:"$(OUTDIR)/FLUJOS.exe" 
LINK32_OBJS= \
	"$(INTDIR)/AUXILIAR.obj" \
	"$(INTDIR)/LEEDATOS.obj" \
	"$(INTDIR)/GAUSS_SEIDEL.obj" \
	"$(INTDIR)/FLUJOS.obj" \
	"$(INTDIR)/mDATA.obj" \
	"$(INTDIR)/INSPECCION.obj" \
	"$(INTDIR)/PORTADA.obj"

"$(OUTDIR)\FLUJOS.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for.obj:
   $(F90) $(F90_PROJ) $<  

.f.obj:
   $(F90) $(F90_PROJ) $<  

.f90.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "FLUJOS - Win32 Release"
# Name "FLUJOS - Win32 Debug"

!IF  "$(CFG)" == "FLUJOS - Win32 Release"

!ELSEIF  "$(CFG)" == "FLUJOS - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\FLUJOS.f90

"$(INTDIR)\FLUJOS.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\LEEDATOS.f90
DEP_F90_LEEDA=\
	".\mDATA.mod"\
	

"$(INTDIR)\LEEDATOS.obj" : $(SOURCE) $(DEP_F90_LEEDA) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\mDATA.f90

!IF  "$(CFG)" == "FLUJOS - Win32 Release"

F90_MODOUT=\
	"mDATA"


"$(INTDIR)\mDATA.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "FLUJOS - Win32 Debug"

F90_MODOUT=\
	"mDATA"


"$(INTDIR)\mDATA.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PORTADA.f90
DEP_F90_PORTA=\
	".\mDATA.mod"\
	

"$(INTDIR)\PORTADA.obj" : $(SOURCE) $(DEP_F90_PORTA) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\INSPECCION.f90
DEP_F90_INSPE=\
	".\mDATA.mod"\
	

"$(INTDIR)\INSPECCION.obj" : $(SOURCE) $(DEP_F90_INSPE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\AUXILIAR.f90
DEP_F90_AUXIL=\
	".\mDATA.mod"\
	

"$(INTDIR)\AUXILIAR.obj" : $(SOURCE) $(DEP_F90_AUXIL) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\GAUSS_SEIDEL.f90
DEP_F90_GAUSS=\
	".\mDATA.mod"\
	

"$(INTDIR)\GAUSS_SEIDEL.obj" : $(SOURCE) $(DEP_F90_GAUSS) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
