CC=g++
LIBS = -LPerforceDiscordWebhookCpp/lib -lclient -lrpc -lsupp -lssl -lcrypto

PerforceDiscordWebhookCpp: PerforceDiscordWebhookCpp/PerforceDiscordWebhookCpp.o StaticLib1/libstub.a
	$(CC) -o PerforceDiscordWebhook PerforceDiscordWebhookCpp/PerforceDiscordWebhookCpp.o $(LIBS)
	
libstub.a : StaticLib1/libstub.o
	ar rcs $@ $^
	
libstub.o: StaticLib1/stub.cc StaticLib1/openssl/ssl.h
	$(CC) -c -o $@ $<