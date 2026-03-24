# Mi Entorno de Desarrollo (macOS M4)

Este es el registro de la configuración purista y optimizada para programar en C utilizando Vim y Alacritty.

## 🎨 Apariencia y Tema
* **Tema:** One Dark (`joshdick/onedark.vim`). Relajante para los ojos, excelente para la sintaxis de C.
* **Fuente:** Victor Mono Nerd Font (Estilo Light/Regular). Configurada en Alacritty para permitir cursivas limpias (`Italic`) en los comentarios y palabras clave.
* **Barra de estado:** `lightline.vim` configurada para hacer match con los colores de One Dark, manteniéndolo ligero.

## 🚀 Optimizaciones Core
* `set hidden`: **El salvavidas.** Permite cambiar de archivos (buffers) sin tener que guardar los cambios forzosamente primero. Mantiene el trabajo en segundo plano.
* `set clipboard=unnamedplus`: Sincroniza el portapapeles de Vim con el de macOS (`Cmd+C` / `Cmd+V`).
* `set mouse=a`: Habilita clics, scroll y selección de texto con el mouse de forma nativa.

## ⌨️ Atajos de Teclado Personalizados

El comportamiento de Vim está modificado para ser más ergonómico. La tecla `<Leader>` está asignada a la **Barra Espaciadora**.

### Ventanas (Splits)
| Atajo | Acción |
| :--- | :--- |
| `ss` | Divide la pantalla horizontalmente. |
| `vv` | Divide la pantalla verticalmente. |
| `Ctrl + h/j/k/l` | Salta rápidamente entre las ventanas divididas. |

### Archivos en Segundo Plano (Buffers)
| Atajo | Acción |
| :--- | :--- |
| `Espacio + l` | Salta al buffer siguiente. |
| `Espacio + h` | Regresa al buffer anterior. |
| `Espacio + q` | Cierra (descarga) el buffer actual sin salir de Vim. |
| `Espacio + b` | Muestra la lista de buffers abiertos y espera el número al que quiero saltar. |
| `Ctrl + 6` | Alterna instantáneamente entre los dos últimos archivos editados. |
