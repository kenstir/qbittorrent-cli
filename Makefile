ifneq (,$(filter $(OS),Windows_NT Windows))
	EXE=.exe
endif

deps:
	go mod tidy

build:
	go build -o bin/qbt${EXE} cmd/qbt/main.go
