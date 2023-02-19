;
;	Estudo UFPE - Professor Doutor Marcio Evaristo Da Cruz Brito
;
;	Aluno: Julius Romanzeira
;	Curso: Eng. Controle e Automa��o
;


processor	16f877a		; Defini��o do processador alvo: PIC 16F877A
radix		DEC			; Defini��o dos decimais como padr�o no programa


#include <p16f877a.inc>		; Inclus�o de arquivo c�digo-fonte

	org 00h		; Defini��o do endere�o de origem
	goto inicio		; Mandando o programa ir para o label inicio
	
 

inicio:		; Label inicio

	banksel TRISD		; Selecionando o banco de mem�ria com o registrador trisd
	movlw	00000000b	; "Setando" todos os pinos do TRISD como saida ("1" Entrada "0" Saida)
	movwf	TRISD		; Jogando o valor para TRISD
	
	
	banksel PORTD		; Selecionando a porta D
	movlw	00000000b	; Todos s�o saida
	movwf	PORTD


	
loop:		; Label de loop, onde o programa ir� funcionar


	bsf		PORTD,0		; Setando a porta 1 do PORTD
	
	goto loop		; Vai mandar o programa para o label loop
	
	end				; Finaliza o programa