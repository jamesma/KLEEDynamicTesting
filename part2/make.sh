
llvm-gcc.cde --emit-llvm -g -Wall -pedantic   -c -o red_black_tree.o red_black_tree.c

llvm-gcc.cde --emit-llvm -g -Wall -pedantic   -c -o stack.o stack.c

llvm-gcc.cde --emit-llvm -g -Wall -pedantic   -c -o malloc_track.o malloc_track.c

llvm-gcc.cde --emit-llvm -g -Wall -pedantic   -c -o misc.o misc.c

llvm-gcc.cde --emit-llvm -g -Wall -pedantic   -c -o test_red_black_tree.o test_red_black_tree.c

llvm-ld red_black_tree.o stack.o test_red_black_tree.o misc.o malloc_track.o -o test_rb 
printf "make completed\n"