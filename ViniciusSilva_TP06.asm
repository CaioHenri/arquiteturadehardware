; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e fa�a cada uma delas alternarem de estado dentro de um loop infinito;






;  /===============================================================================\
; | Projeto:  T�TULO																|	
; |																					|
; | Autor: Vinicius do Carmo Silva RA:153722												|
; | Idioma: NOME DA L�NGUA EM QUE O PROGRAMA EST� ESCRITO E							|
; |			O NOME DO COMPILADOR USADO PARA COMPIL�-LO QUANDO FOI TESTADO			|
; | Solu��o: NOME DA SUA SOLU��O ATMEL STUDIO 7 (Template neste exemplo)			|
; |																					|
; | Projetos: AssemblerTargetTeamplate												|
; |																					|
; | Para compilar: Explique como compilar este programa	                            |
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
; | Software: NOME E T�TULO DA CLASSE PARA QUE ESTE PROGRAMA FOI ESCRITO			|
; |																					|
; | Vers�o do SO: SEU N�MERO DE VERS�O DO PROGRAMA DE COMPUTADOR					|
; |																					|
; | Plataforma: SEU PROGRAMA DE COMPUTADOR											|
; |																					|
; | Instrutor: NOME DO INSTRUTOR DO SEU CURSO										|
; |																					|
; | Data de vencimento: DATA E HORA EM QUE ESTE PROGRAMA � / DEVIA SER				|
; | SUBMETIDO																		|
; |																					|
; + --------------------------------------------------------------------------------+
; |																					|
; | Descri��o: DESCREVA O PROBLEMA DE QUE ESTE PROGRAMA FOI ESCRITO RESOLVER.		|
; |																					|
; | Entrada: DESCREVA A ENTRADA QUE O PROGRAMA EXIGE.								|
; |																					|
; | Sa�da: DESCREVA A SA�DA QUE O PROGRAMA PRODUZ.									|
; |																					|
; | Algoritmo: ESBO�O DA ABORDAGEM USADA PELO PROGRAMA PARA RESOLVER O PROBLEMA.	|
; |																					|
; | Recursos necess�rios n�o inclu�dos: DESCREVA AQUI QUALQUER REQUISITO DE			|
; | A tarefa que o programa n�o tenta resolver.										|
; |																					|
; | Erros conhecidos: SE O PROGRAMA N�O FUNCIONAR CORRETAMENTE EM ALGUNS			|
; |					  SITUA��ES, DESCREVA AS SITUA��ES E PROBLEMAS AQUI.			|
; |																					|
;  \===============================================================================/


.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das vari�veis   
.device		atmega328P
.nolist
.list

;============
;Declara��es:
.equ LED = PB5
.ORG 0x0000              ; instru��o inicial, � onde se inicia a mem�ria de programa
    rjmp INICIO           ; O vetor de rein�cio: pula para �main�

      ;***coloque suas vari�veis e declara��es aqui***   
	;Exemplo: 
	;.def	temp	=r16
 
INICIO:
LDI R16, 0XFF
OUT DDRB,R16

PRINCIPAL:
SBI PORTB, LED
RCALL ATRASO
CBI PORTB LED
RCALL ATRASO
RJMP PRINCIPAL
 
LOOP:
LDI R19, 0X02
volta:
DEC R17
BRNE volta
DEC R18
BRNE volta
DEC R19
BRNE volta
RET
   rjmp LOOP                 
      ;***seus procedimentos de atua��o finitas v�o aqui aqui o  programa vai finalizar no final***
.EXIT 