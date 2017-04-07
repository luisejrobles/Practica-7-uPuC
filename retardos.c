#include <stdio.h>

void ret232();
void ret5ms();
void ret666ms();

int main(void)
{
	printf("Retardo de 232us:");
	ret232();
	printf("\n\nRetardo de 5ms:");
	ret5ms();
	printf("\n\nRetardo de 666ms:");
	ret666ms();
}

void ret232()
{
	int m = 0, n;
	
	do{
		n = 0;
		do{
			if( ((4*n)+(3*m*n)) == 3730)
			{
				printf("\nm: %d",m);
				printf("\nn: %d",n);		
			}
			n++;
		}while(n <= 255);
		m ++;
	}while( m <= 255 );
}

void ret5ms()
{
	int m = 0, n;
	
	do{
		n = 0;
		do{
			if( ((4*n)+(3*m*n)) == 79990)
			{
				printf("\nm: %d",m);
				printf("\nn: %d",n);
			}
			n++;
		}while(n <= 255);
		m ++;
	}while( m <= 255 );
}

void ret666ms()
{
	int m = 0, n, o;
	do{
		n = 0;
		do{
			o = 0;
			do{
				if( ((3*m*n*o)+(3*m*n)+(5*n)+10) == 10656000)
				{
					printf("\nm: %d",m);
					printf("\nn: %d",n);
					printf("\no: %d",o);
					break;
				}
				o++;
			}while(o <= 255);
			n++;
		}while(n <= 255);
		m ++;
	}while( m <= 255 );
}

