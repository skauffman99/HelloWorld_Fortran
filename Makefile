#simple make for helloworld
HelloWorld: HelloWorld.o
	gfortran -o HelloWorld DoCalculation.o HelloWorld.o
DoCalculation.o: DoCalculation.f90
	gfortran -c -g -ffree-line-length-none DoCalculation.f90
HelloWorld.o: HelloWorld.f90
	gfortran -c -g -ffree-line-length-none HelloWorld.f90
clean:
	rm -f HelloWorld.o DoCalculation.o HelloWorld.exe
#end of makefile
