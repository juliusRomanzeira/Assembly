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

	banksel TRISD
	movlw	