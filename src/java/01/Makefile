# Variáveis para Java e Maple
JAVA  = /opt/maple2021/jre.X86_64_LINUX/bin/java
JAVAC = /opt/maple2021/jre.X86_64_LINUX/bin/javac
MAPLE_JARS = /opt/maple2021/java/externalcall.jar:/opt/maple2021/java/Maple.jar
LD_PATH = /opt/maple2021/bin.X86_64_LINUX

export LD_LIBRARY_PATH=$(LD_PATH)
export MAPLE=/opt/maple2021

# Regra padrão
all: Example.class run

# Compilação
Example.class: Example.java
	echo ===2222 $${MAPLE}
	echo ===2222 $${LD_LIBRARY_PATH}
	$(JAVAC) -cp "$(MAPLE_JARS)" Example.java

# Execução
run:
	echo ===3333 $${MAPLE}
	echo ===3333 $${LD_LIBRARY_PATH}
	$(JAVA) -cp ".:$(MAPLE_JARS)" Example

debug:
	gdb --args /opt/maple2021/jre.X86_64_LINUX/bin/java -cp ".:/opt/maple2021/java/externalcall.jar:/opt/maple2021/java/Maple.jar" Example

# Limpeza
clean:
	rm -f Example.class

