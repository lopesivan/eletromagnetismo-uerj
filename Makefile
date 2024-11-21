
all: status

update:
	git add .
	git ann
	git push

status:
	@echo "Use: make new - cria um novo projeto."

new:
	./new.sh
