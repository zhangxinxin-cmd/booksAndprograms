# script for testing that programs compile correctly (see README)

#! /bin/tcsh

set CFLAGS = "-I./src"

#set LFLAGS = "-L/usr/local/mpi/lib -lmpich -lpthread -lm"
set LFLAGS = "-lm"

for f in ./src/pr_*
do	
  echo $f
  gcc $CFLAGS $f $LFLAGS -lm
  rm a.out
done
end
