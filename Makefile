.factorio := ~/Library/Application\ Support/factorio

name := $(shell jq < mod/info.json .name -r)
version := $(shell jq < mod/info.json .version -r)

out_dir := $(shell jq < tsconfig.json .compilerOptions.outDir -r)
sources := $(shell find src -type f)
mod_files := mod/* LICENSE README.md
tsconfig := tsconfig.json

zip := $(out_dir)/../$(name)_$(version).zip

.PHONY: all build clean install uninstall uninstall-all

all: build

build: $(zip)

clean:
	rm -rf out/

install: $(zip)
	cp $(zip) $(.factorio)/mods

uninstall:
	rm $(.factorio)/mods/$(name)_$(version).zip

uninstall-all:
	rm $(.factorio)/mods/$(name)_*.zip

$(zip): $(out_dir) $(sources) $(mod_files) $(tsconfig)
	cd $(out_dir)/..; zip -r $(name)_$(version).zip $(shell basename ../$(out_dir))

$(out_dir): $(sources) $(mod_files) $(tsconfig)
	bun x tstl
	rsync -a $(mod_files) $(out_dir)
