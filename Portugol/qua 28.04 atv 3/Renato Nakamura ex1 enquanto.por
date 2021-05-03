/*
 * 1- Elaborar um programa que efetue a leitura sucessiva de valores numéricos 
 * e apresente no final o total do somatório, a média e o total de valores lidos. 
 * O programa deve fazer as leituras dos valores enquanto o usuário estiver fornecendo 
 * valores positivos. Ou seja, o programa deve parar quando o usuário fornecer um valor negativo.
 */

programa
{
	
	funcao inicio()
	{
		inteiro x=0
		real numeros=0.00
		real media=0.00
		inteiro total=0
		enquanto(numeros>=0){
			escreva("vai mandando numeros ai parça ")
			leia(numeros)
			se(numeros>0){
			media+=numeros
			total++				
			}

		}
		media=media/total
		escreva(media+"sla"+total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 664; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */