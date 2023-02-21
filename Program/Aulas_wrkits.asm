;
;	Estudo UFPE - Professor Doutor Marcio Evaristo Da Cruz Brito
;
;	Aluno: Julius Romanzeira
;	Curso: Eng. Controle e Automa��o
;


processor	16f877a		; Defini��o do processador alvo: PIC 16F877A
radix		DEC			; Defini��o dos decimais como padr�o no programa


#include <p16f877a.inc>		; Inclus�o de arquivo c�digo-fonte

	org 0x00		; Defini��o do endere�o de origem
	goto inicio		; Mandando o programa ir para o label inicio
	
 

inicio:		; Label inicio

	banksel TRISD		; Selecionando o banco de mem�ria com o registrador trisd
	movlw	00000000b	; "Setando" todos os pinos do TRISD como saida ("1" Entrada "0" Saida)
	movwf	TRISD		; Jogando o valor para TRISD
	
	
	banksel PORTD		; Selecionando a porta D
	movlw	00000000b	; Todos s�o saida
	movwf	PORTD





; --- Label de Vari�vel ---

	org 0x20		; Endere�o que eu quero usar para registrar minha vari�vel
temp	res 1 	; Reservando 1 bit de mem�ria para a vari�vel




	
; --- Label que faz os leds do TRISD pircarem ---
	
PISCA_LEDS:		; Label de loop, onde o programa ir� funcionar

	bsf		PORTD,0
	call	Atraso
	bcf		PORTD,0
	bsf		PORTD,1
	bcf		PORTD,1
	bsf		PORTD,2
	bcf		PORTD,2
	bsf		PORTD,3
	bcf		PORTD,3
	bsf		PORTD,4
	bcf		PORTD,4
	bsf		PORTD,5
	bcf		PORTD,5
	bsf		PORTD,6
	bcf		PORTD,6
	bsf		PORTD,7
	bcf		PORTD,7
		
	goto PISCA_LEDS		; Vai mandar o programa para o label PISCA_LEDS
	
	
	
	
	
; --- Label de atraso para redu��o da frequ�ncia de piscadas dos leds ---

Atraso:

	movlw	1
	movwf	temp
	
	
@1	decf	temp,f
	btfss	STATUS,Z	; Vai analizar se o registrador z est�o ou n�o setado. P�gina 19 do DATASHEET	
	goto @1
	
	end				; Finaliza o programa