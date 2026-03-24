# 🛠️ Cómo usar el Makefile Dinámico

Este proyecto utiliza un Makefile inteligente que escanea la carpeta y compila los archivos `.c` automáticamente sin necesidad de especificar nombres.

### Comandos de Compilación

* `make`
  Compila **todos** los archivos `.c` que se encuentren en la carpeta actual, generando ejecutables individuales con el mismo nombre que el archivo fuente (ej. `test.c` genera `test`).

* `make <nombre_archivo>`
  Compila **solo** el archivo especificado. 
  *(Ejemplo: `make main` buscará `main.c` y compilará solo ese).*

* `make clean`
  Borra todos los archivos ejecutables de la carpeta.
### Comandos de Git (Seguros y Automatizados)

* `make add`
  **[Automático]** Ejecuta `make clean` primero para purgar binarios, y luego `git add .` para preparar el código fuente.

* `make commit`
  Pide por consola el mensaje y ejecuta el commit automáticamente.

* `make push`
  Sube los cambios a la rama `main` del repositorio remoto.

* `make git-all`
  Ejecuta la cadena completa y a prueba de errores: `clean` -> `add` -> `commit` (pide mensaje) -> `push`.
