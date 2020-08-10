L = /alpine /hello-world

local = docker.io
remote = hl.test
version = v0.0.3

test:
	for p in ${L};\
	do\
		 docker pull ${local}$${p}:latest;\
		 docker tag ${local}$${p}:latest ${remote}$${p}:${version};\
	done
