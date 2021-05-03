		/*
		 * 1) João, homem de bem, comprou um microcomputador para controlar o rendimento diário de seu 
		 * trabalho. Toda vez que ele traz um peso de tomate maior que o estabelecido pelo regulamento 
		 * do estado de São Paulo (50 quilos) deve pagar um multa de R$ 4,00 por quilo excedente. João 
		 * precisa que você faça um sistema que leia a variável P (peso de tomates) e verifique se há 
		 * excesso. Se houver, gravar na variável E (Excesso) e na variável M o valor da multa que João 
		 * deverá pagar. Caso contrário mostrar tais variáveis com o conteúdo ZERO.
		 */


programa
{
	inclua biblioteca Matematica -->mat
	
	funcao inicio()
	{

		const real MULTA = 4.00
		real P = 0.00
		real E = 0.00
		real M = 0.00

		escreva("Peso dos tomates em kg: ")
		leia(P)

		se (P>0 e P<=50){
			escreva("O peso se encontra dentro do estabelecido pelo estado de SP")
		} senao se(P>50){
			E = P-50
			M = E*MULTA 
			escreva("O peso dos tomates excede o estabelecido pelo estado em "+E+" kilos \n")
			escreva("Você deverá pagar "+M+" reais de multa")
			
		}senao{
			escreva("Peso negativo cara?? ai vc ta viajando")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */