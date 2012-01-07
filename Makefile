PREFIX=/usr/local

test: main.o
	gcc $^ -o $@


%.o:%.clay
	clay -c $^ -o $@

clean:
	rm -f test *.o


install:
	install -d ${PREFIX}/lib/lib-clay/io/events
	install -d ${PREFIX}/lib/lib-clay/io/events/platform
	install io/events/events.clay  ${PREFIX}/lib/lib-clay/io/events/
	install io/events/common.clay  ${PREFIX}/lib/lib-clay/io/events/
	install io/events/platform/platform.unix.clay  ${PREFIX}/lib/lib-clay/io/events/platform/


