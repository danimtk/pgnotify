gateway_monitor : gateway_monitor.c
	gcc -fpic -I /usr/pgsql-9.3/include/server -c gateway_monitor.c
	gcc -shared -o gateway_monitor.so gateway_monitor.o
	- rm gateway_monitor.o
passwd_monitor: passwd_monitor.c
	gcc -fpic -I /usr/pgsql-9.4/include/server -c passwd_monitor.c
	gcc -shared -o passwd_monitor.so passwd_monitor.o
	- rm passwd_monitor.o
charging_pile_monitor91: charging_pile_monitor.c
	gcc -fpic -I /usr/pgsql-9.1/include/server -c charging_pile_monitor.c
	gcc -shared -o charging_pile_monitor.so charging_pile_monitor.o
	- rm passwd_monitor.o
clean:
	rm $(TARGET)
