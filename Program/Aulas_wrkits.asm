;
;	Estudo UFPE - Professor Doutor Marcio Evaristo Da Cruz Brito
;
;	Aluno: Julius Romanzeira
;	Curso: Eng. Controle e Automação
;


processor	16f877a		; Definição do processador alvo: PIC 16F877A
radix		DEC			; Definição dos decimais como padrão no programa


#include <p16f877a.inc>		; Inclusão de arquivo código-fonte

	org 00h		; Definição do endereço de origem
	goto inicio		; Mandando o programa ir para o label inicio
	
 

inicio:		; Label inicio

	banksel TRISD		; Selecionando o banco de memória com o registrador trisd
	movlw	00000000b	; "Setando" todos os pinos do TRISD como saida ("1" Entrada "0" Saida)
	movwf	TRISD		; Jogando o valor para TRISD
	
	
	banksel PORTD		; Selecionando a porta D
	movlw	00000000b	; Todos são saida
	movwf	PORTD

	
PISCA_LEDS:		; Label de loop, onde o programa irá funcionar

	
	
	bsf		PORTD,0
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
	
	end				; Finaliza o programa