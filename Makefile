BINARY_NAME=main

.PHONY: run clean all

build:
	go build -o $(BINARY_NAME) ./app/main.go

run: build
	./$(BINARY_NAME)

clean:
	rm -f $(BINARY_NAME)

all: build run clean
