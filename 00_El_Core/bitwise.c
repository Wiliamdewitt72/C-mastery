#include <stdio.h>

// Función extra para imprimir en binario y ver la magia
void print_binario(unsigned char byte) {
    for (int i = 7; i >= 0; i--) {
        printf("%d", (byte >> i) & 1);
    }
    printf("\n");
}

int main() {
    // Tenemos un microcontrolador de 8 bits. Todo está apagado (00000000)
    unsigned char puerto = 0; 
    
    printf("Estado inicial:  ");
    print_binario(puerto);

    // Queremos manipular el Pin número 3 (contando desde 0 de derecha a izquierda)
    // Máscara: 1 desplazado 3 veces (00001000)
    unsigned char mascara = 1 << 3;

    // 1. ENCENDER (Set) usando OR (|)
    puerto = puerto | mascara;
    printf("Despues de Set:  ");
    print_binario(puerto);

    // 2. INVERTIR (Toggle) usando XOR (^)
    // Si estaba encendido, se apaga. Si estaba apagado, se enciende.
    puerto = puerto ^ mascara;
    printf("Despues de XOR:  ");
    print_binario(puerto);

    // Lo volvemos a encender para probar el apagado
    puerto = puerto | mascara; 

    // 3. APAGAR (Clear) usando AND (&) y NOT (~)
    // La máscara invertida es 11110111. Solo apaga el bit 3.
    puerto = puerto & ~mascara;
    printf("Despues de Clear:");
    print_binario(puerto);

    return 0;
}
