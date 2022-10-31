.PHONY: test compile convert clean

data_path="/home/hemeng/Documents/biio/matrices/"

all: compile convert

test:
	gcc ./src/test.c -o ./bin/test
	./bin/test

compile:
	gcc ./src/convert.c -o ./bin/convert

convert:
	@for data in `find $(data_path) -name "*.mtx"`; \
	do \
		./bin/convert $$data; \
	done

clean:
	rm ./bin/*