all: combine

combine: sample
	g++ -o out sample_code.o

sample:
	cp sample_code.cpp sample_code.cpp.last_profiled
	g++ -c sample_code.cpp

clean:
	rm -f *.o
	rm -f out
	rm -f a.out
	rm -f *.ll
	rm -f *.bc
	rm -f *.txt
	rm -f *.xml
	rm -f dp-fmap
	rm -f tmp_makefile.mk
	rm -f simple_dp_run
	rm -f simple_dp_run_red
	rm -f simple
	rm -f *.last_profiled
	rm -f *.modified
	rm -f *.omp
	rm -f *.json
