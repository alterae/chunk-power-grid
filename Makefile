name := $(shell jq < mod/info.json .name -r)
version := $(shell jq < mod/info.json .version -r)
files := $(shell find mod)
output := build/$(name)_$(version).zip

.factorio := ~/Library/Application\ Support/factorio

.PHONY: all clean install
all: $(output)

build:
	mkdir build


clean:
	rm -rf build

install: $(output)
	cp $(output) $(.factorio)/mods

$(output): build $(files) README.md LICENSE
	zip -r $(output) mod README.md LICENSE
