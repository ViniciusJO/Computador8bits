SRC := $(wildcard *.java)

all:
	@echo all

build: $(SRC:%.java=%.class)
	@echo Aplicacao construida

%.class: %.java
	@echo Compilando classe $(subst .class,,$@)...
	@javac $^ -s bin/class/$@

help:
	@echo help

clean:
	@cd bin/class && del *.class