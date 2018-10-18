app:main.o
	$(CC) $(CFLAGS) -o app main.c -L. -lubuntu
libubuntu.a:ubuntu.o
	ar crs libubuntu.a ubuntu.o
ubuntu.o:ubuntu.c
	gcc -c -o ubuntu.o ubuntu.c
.PHONY:clean
clean:
	rm *.o libubuntu.a ubuntu.o
