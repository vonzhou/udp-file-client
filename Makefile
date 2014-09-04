cient: sha1.o recipe.o rabin.o file_transfer_client.o backup.o wrapunix.o wrapsock.o  writen.o error.o
	gcc -o client sha1.o recipe.o rabin.o file_transfer_client.o backup.o wrapunix.o writen.o error.o  wrapsock.o  -lssl -lcrypto
	@echo "Compiling ....\n"
sha1.o : sha1.c global.h
	gcc -c sha1.c
recipe.o : recipe.c global.h
	gcc -c recipe.c
rabin.o : rabin.c global.h
	gcc -c rabin.c
client.o : file_transfer_client.c global.h
	gcc -c file_transfer_client.c
backup.o : backup.c global.h
	gcc -c backup.c
wrapsock.o:wrapsock.c global.h
	gcc -c wrapsock.c
wrapunix.o:wrapunix.c global.h
	gcc -c wrapunix.c
error.o:error.c global.h
	gcc -c error.c
writen.o:writen.c global.h
	gcc -c writen.c

clean :
	-rm client *.o
