mod-name := $(shell jq < mod/info.json .name -r)
version := $(shell jq < mod/info.json .version -r)
files := $(shell find mod)

.PHONY: all

all: $(mod-name)_$(version).zip

$(mod-name)_$(version).zip: build $(files) README.md LICENSE
	zip -r build/$(mod-name)_$(version).zip mod README.md LICENSE

build:
	mkdir build
