build:
	docker build -t scc-codestyle .

console:
	docker run -ti -v "$(PWD):/scc-codestyle" scc-codestyle bash
	
