# Operadores Bitwise: Controlando la Matrix

En C, no solo operamos con números, operamos con sus **bits exactos**. Esto es vital para hardware porque un solo bit puede representar si una válvula está abierta (1) o cerrada (0), ahorrando muchísima memoria.



Aquí están los 6 operadores fundamentales de C a nivel bit:

| Operador | Símbolo | ¿Qué hace? | Regla de oro |
| :--- | :--- | :--- | :--- |
| **AND** | `&` | Multiplica los bits. | Solo da `1` si AMBOS son `1`. (Ideal para **leer/apagar** bits). |
| **OR** | `\|` | Suma los bits. | Da `1` si AL MENOS UNO es `1`. (Ideal para **encender** bits). |
| **XOR** | `^` | O exclusivo. | Da `1` solo si son DIFERENTES. (Ideal para **invertir/toggle** bits). |
| **NOT** | `~` | Inversor. | Cambia todos los `0` a `1` y viceversa. |
| **Shift L**| `<<` | Desplaza a la izq. | Multiplica por 2 por cada salto. |
| **Shift R**| `>>` | Desplaza a la der. | Divide entre 2 por cada salto. |

## Las 3 Operaciones Sagradas del Hardware

Para manipular un bit específico sin alterar los demás, creamos una "Máscara" usando el operador Shift Left (`<<`). Ejemplo: `1 << 3` crea un `1` en la posición 3 (`00001000`).

1. **Encender un bit (Set):** Usamos `OR` (`|`).
   `registro = registro | mascara;`
2. **Apagar un bit (Clear):** Usamos `AND` con `NOT` (`& ~`).
   `registro = registro & ~mascara;`
3. **Invertir un bit (Toggle):** Usamos `XOR` (`^`).
   `registro = registro ^ mascara;`
