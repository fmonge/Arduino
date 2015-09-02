// @wilberthch
#include <avr/io.h>
#include <util/delay.h>
 
#define TIEMPO_ESPERA 1000
 
int main (void)
{

	DDRD = 10000000;
	PORTD = 10000000;
	int contador = 1;


	for(;;)
	{
		_delay_ms(TIEMPO_ESPERA);
		DDRD >>= 1;
		PORTD >>= 1;
		if(contador > 3)
		{
			DDRD = 10000000;
			PORTD = 10000000;
			contador = 0;
		}
		contador++;
	}

}
