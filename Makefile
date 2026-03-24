# ==========================================
# VARIABLES
# ==========================================
CC = gcc
CFLAGS = -Wall -Wextra

# 1. Encuentra todos los archivos .c en la carpeta actual
SRCS = $(wildcard *.c)

# 2. Genera los nombres de los ejecutables (le quita el .c a la lista anterior)
PROGS = $(patsubst %.c,%,$(SRCS))

# ==========================================
# COMPILACIÓN Y LIMPIEZA
# ==========================================
# Regla principal: compila todo lo que encontró
all: $(PROGS)
	@echo "[+] Compilacion exitosa. Ejecutables listos."

# La regla mágica: le dice a Make cómo compilar CADA archivo individualmente
%: %.c
	$(CC) $(CFLAGS) $< -o $@

# Borra todos los ejecutables que se hayan generado para limpiar la carpeta
clean:
	rm -f $(PROGS)
	@echo "[+] Limpieza terminada. Ejecutables borrados."

# ==========================================
# COMANDOS DE GIT (A prueba de balas)
# ==========================================
# Al poner 'clean' a un lado de 'add:', Make ejecutará clean PRIMERO automáticamente
add: clean
	git add .
	@echo "[+] Todos los cambios agregados (git add .)"

commit:
	@read -p "Mensaje del commit: " msg; \
	git commit -m "$$msg"

push:
	git push origin main
	@echo "[+] Cambios subidos a GitHub exitosamente"

# git-all ejecutará: clean -> add -> commit -> push
git-all: add commit push
