# 1. De Texto a Máquina: Las 4 Etapas de C

A diferencia de lenguajes interpretados como Python, C exige que el código pase por un proceso estricto de transformación antes de poder ejecutarse en el hardware. Este flujo se divide en cuatro pasos inquebrantables:



1. **Preprocesador (`.i`):** Es el paso de "buscar y reemplazar". Toma todo lo que empieza con `#` (como `#include` o `#define`), pega el contenido de los archivos de cabecera directamente en nuestro código y limpia los comentarios.
2. **Compilador (`.s`):** Traduce nuestro código C puro y validado a un código intermedio llamado Lenguaje Ensamblador (Assembly). Aquí es donde nos tira los errores de sintaxis si nos falta un punto y coma.
3. **Ensamblador (`.o`):** Convierte el código Assembly en código máquina (binario de ceros y unos), creando archivos "objeto". La máquina ya lo entiende, pero aún no sabe cómo conectar las piezas.
4. **Linker (Enlazador):** Toma todos nuestros archivos objeto y las librerías externas (como `stdio.h` para el `printf`), y los "cose" todos juntos para generar el ejecutable final sin extensiones.
