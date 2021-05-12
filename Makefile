CFLAGS=-std=c11 -g -static

9cc: 9cc.c
test: 9cc
	./test.sh

clean:
	rm -f 9cc *.o *~ temp*

.PHONY: test clean

# $make で9ccが作成され、 $make test で テストを実行