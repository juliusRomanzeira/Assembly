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


	
loop:		; Label de loop, onde o programa irá funcionar


	bsf		PORTD,0		; Setando a porta 1 do PORTD
	
	goto loop		; Vai mandar o programa para o label loop
	
	end				; Finaliza o programa