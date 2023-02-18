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

	banksel TRISD
	movlw	