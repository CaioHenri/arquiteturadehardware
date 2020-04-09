; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e fa�a cada uma delas alternarem de estado dentro de um loop infinito;






;  /===============================================================================\
; | Projeto:  T�TULO																|	
; |																					|
; | Autor: Rodrigo Gradela da Gra�a Ra:146326													|
; | Idioma: ASSEMBLY e AVRASM2.exe			|
; | Solu��o: NOME DA SUA SOLU��O ATMEL STUDIO 7 (Template neste exemplo)			|
; |																					|
; | Projetos: AssemblerTargetTeamplate												|
; |																					|
; | Para compilar: Atrav�s compilador AVRASM2.exe                         |
; |																					|
; |Exemplo: Para compilar este c�digo, dever� ter o compilador AVRASM2.exe (windows)|
; | no prompt de comando (MS-DOS):													|
; |																					|
; |      avrasm2.exe -fI -o "Teamplate.hex"											|
; |						 -m "Teamplate.map"											|
; | 					 -l "Teamplate.lss"											|	
; |						 -e "Teamplate.eep"											|  
; |						 -S "Teamplate.tmp"											|	  
; |						 -W+ie  -d "Debug\Teamplate.obj"							|
; |						 main.asm													|
; |																					|
; | Software: Atmel Studio 7.0			|
; |																					|
; | Vers�o do SO: vers�o de entrega do tp6					|
; |																					|

; | Instrutor: Sergio Schina									|
; |																					|
; + --------------------------------------------------------------------------------+
; |																			
;  \===============================================================================/


.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das vari�veis   
.device		atmega328P
.nolist
.list

;============
;Declara��es:



.ORG 0x0000              ; instru��o inicial, � onde se inicia a mem�ria de programa
    rjmp INICIO           ; O vetor de rein�cio: pula para �main�
      ;***coloque suas vari�veis e declara��es aqui***   
	;Exemplo: 
	.def	temp	=r16

 
INICIO:
DDRA = 0b11111111;
DDRB = 0b11111111;   
DDRC = 0b11111111;
DDRD = 0b11111111;            

LOOP:
      ;*** rotinas de repeti��o ***
PORTA=0b11111111;
delay_ms(500);
PORTA=0b00000000;
delay_ms(500);
PORTB=0b11111111;
delay_ms(500);
PORTB=0b00000000;
delay_ms(500);
PORTC=0b11111111;
delay_ms(500);
PORTC=0b00000000;
delay_ms(500);
PORTD=0b11111111;
delay_ms(500);
PORTD=0b00000000;


   rjmp LOOP                 
      ;***seus procedimentos de atua��o finitas v�o aqui aqui o  programa vai finalizar no final***
.EXIT 