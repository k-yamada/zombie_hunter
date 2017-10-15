.PHONY: help

all: help

help:
	cat Makefile

make_zombie:
	bundle exec ./bin/zombie_hunter make_zombie
