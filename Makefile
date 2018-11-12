all:	stream_relay mqtt2stream

stream_relay:	stream_relay.c
	gcc -o stream_relay stream_relay.c $(LIBS) -lpaho-mqtt3c -lpthread

mqtt2stream:	mqtt2stream.c
	gcc -o mqtt2stream mqtt2stream.c $(LIBS) -lpaho-mqtt3a

debug: stream_relay.c
	gcc -o stream_relay stream_relay.c $(LIBS) -lpaho-mqtt3c -lpthread -g
