!include <win32.mak>

all: Sample1.exe Sample2.exe Sample3.exe Sample4.exe Sample4.1.exe Sample5.exe

Sample1.exe : Sample1.cpp
    cl /EHsc /Zi /Ox /nologo /MD /D_UNICODE /DUNICODE Sample1.cpp

Sample2.exe : Sample2.cpp
    cl /EHsc /Zi /Ox /nologo /MD /D_UNICODE /DUNICODE Sample2.cpp

Sample3.exe : Sample3.cpp PrintCallStack.obj
    cl /EHsc /Zi /Ox /nologo /MD /D_UNICODE /DUNICODE Sample3.cpp PrintCallStack.obj

PrintCallStack.obj: PrintCallStack.cpp
	cl /EHsc /Zi /Ox /nologo /MD /c PrintCallStack.cpp

Sample4.exe : Sample4.cpp
    cl /EHsc /Zi /Ox /nologo /MD /D_UNICODE /DUNICODE Sample4.cpp

Sample4.1.exe : Sample4.1.cpp
    cl /EHsc /Zi /Ox /nologo /MD /D_UNICODE /DUNICODE Sample4.1.cpp

Sample5.exe : Sample5.cpp
	cl /EHsc /Zi /Ox /nologo /MD /D_UNICODE /DUNICODE Sample5.cpp

clean:
     @del *.obj *.exp *.ilk *.exe *.dll *.lib *.pdb *.dmp
