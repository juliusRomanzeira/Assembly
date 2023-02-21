;
;	Estudo UFPE - Professor Doutor Marcio Evaristo Da Cruz Brito
;
;	Aluno: Julius Romanzeira
;	Curso: Eng. Controle e Automaï¿½ï¿½o
;


processor	16f877a		; Definição do processador alvo: PIC 16F877A
radix		DEC			; Definição dos decimais como padrão no programa


#include <p16f877a.inc>		; Inclusão de arquivo código-fonte

	org 0x00		; Definição do endereço de origem
	goto inicio		; Mandando o programa ir para o label inicio
	
 

inicio:		; Label inicio

	banksel TRISD		; Selecionando o banco de memória com o registrador trisd
	movlw	00000000b	; "Setando" todos os pinos do TRISD como saida ("1" Entrada "0" Saida)
	movwf	TRISD		; Jogando o valor para TRISD
	
	
	banksel PORTD		; Selecionando a porta D
	movlw	00000000b	; Todos são saida
	movwf	PORTD





; --- Label de Variável ---

	org 0x20		; Endereço que eu quero usar para registrar minha variável
temp	res 1 	; Reservando 1 bit de memï¿½ria para a variável




	
; --- Label que faz os leds do TRISD pircarem ---
	
PISCA_LEDS:		; Label de loop, onde o programa irá funcionar

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
	
	
	
	
	
; --- Label de atraso para redução da frequência de piscadas dos leds ---

Atraso:

	movlw	1
	movwf	temp
	
	
@1	decf	temp,f
	btfss	STATUS,Z	; Vai analizar se o registrador z estão ou não setado. Página 19 do DATASHEET	
	goto @1
	
	end				; Finaliza o programa