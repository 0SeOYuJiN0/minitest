CC = gcc
TARGET = market
OBJS = market.c product.o manager.o
all : $(TARGET)
$(TARGET) : $(OBJS)
	 $(CC) -o $(TARGET) $(OBJS)
product.o : product.c product.h
	$(CC) -c product.c
manager.o : manager.c manager.h
	$(CC) -c manager.c
clean :
	rm *.o market

