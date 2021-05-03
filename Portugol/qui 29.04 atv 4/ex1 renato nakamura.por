/*
 * Faça um programa que crie um vetor por leitura com 5 valores de pontuação de uma atividade 
 * e o escreva em seguida. Encontre após a maior pontuação e a apresente. 
 */

programa
{
	
	funcao inicio()
	{
		real valores[5]
		real maiorPontuacao = 0.00
		inteiro contador=0

		para(contador;contador<3;contador++){
			escreva("Qual a sua pontuação na atividade? ")
			leia(valores[contador])

			se(valores[contador]>maiorPontuacao){
				maiorPontuacao=valores[contador]
			}
			limpa()
		}
		escreva("a maior pontuação foi : "+maiorPontuacao)
		para(contador=0;contador<3;contador++){
			escreva("\na nota "+(contador+1)+" foi " +valores[contador])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 663; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */