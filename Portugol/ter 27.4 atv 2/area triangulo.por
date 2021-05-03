/*
 * 7) Receber valores de base e altura de um triângulo e verificar se são valores válidos 
 * (positivos maiores que zero). Em caso afirmativo, calcular a área do triângulo.
 */

programa
{
	
	funcao inicio()
	{
		real base
		real altura
		real area

		escreva("manda ai a base do triangulo em cm ")
		leia(base)
		escreva("manda ai a altura do triangulo em cm ")
		leia(altura)
		
		se (base>0 e altura>0){
			area= base*altura/2
			escreva("to a area ai mlk " +area)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 438; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */