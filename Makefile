CC=gcc
CFLAGS=
LDFLAGS=-lm -lpthread -lX11 -lXrandr -lGL -lGLU -lgl2d -lglfw
OBJS=game.o player.o enemy.o bomb.o explosion.o
EXE=game



$(EXE): $(OBJS)
	gcc $(OBJS) -o $(EXE) $(LDFLAGS)

game.o: game.c common.h

player.o: player.c player.h common.h

enemy.o: enemy.c enemy.h common.h

bomb.o: bomb.c bomb.h common.h

explosion.o: explosion.c explosion.h common.h



.PHONY: clean;

clean:
	rm $(OBJS) $(EXE)
