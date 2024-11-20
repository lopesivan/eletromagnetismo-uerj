# Variáveis para Java e Maple
JAVA  = /opt/maple2021/jre.X86_64_LINUX/bin/java
JAVAC = /opt/maple2021/jre.X86_64_LINUX/bin/javac
MAPLE_JARS = /opt/maple2021/java/externalcall.jar:/opt/maple2021/java/Maple.jar
LD_PATH = /opt/maple2021/bin.X86_64_LINUX

# Regra padrão
all: Example.class run

# Compilação
Example.class: Example.java
	$(JAVAC) -cp "$(MAPLE_JARS)" Example.java

# Execução
run:
	export LD_LIBRARY_PATH="$(LD_PATH):$$LD_LIBRARY_PATH"; \
	export MAPLE="/opt/maple2021"; \
	$(JAVA) -cp ".:$(MAPLE_JARS)" Example

# Limpeza
clean:
	rm -f Example.class

