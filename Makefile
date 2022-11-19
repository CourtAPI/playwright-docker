all: guard-version
	docker build --build-arg "VERSION=${version}" -t courtapi/playwright:${version} .


guard-%:
	@ if [ -z '${${*}}' ]; then echo 'Please specify $*. Ex. `make $*=Blah`' && exit 1; fi

