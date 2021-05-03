/*
 * 4) Faça um sistema que leia um número inteiro e mostre uma mensagem indicando 
 * se este número é par ou ímpar, e se é positivo ou negativo.
 */

programa
{
	
	funcao inicio()
	{
		inteiro num = 0

		escreva("manda um numero inteiro ai parça ")
		leia(num)

		se(num%2==0){
			se(num<0){
				escreva("O seu numero é par e negativo cara")
			}senao se(num>0){
				escreva("O seu numero é par e positivo, que audacioso vc ")
			}senao{
				escreva("cara, esse ai é o zero, não tem dessas de par ou impar, sai dessa")
			}
			
		}senao se(num%2==1 ou num%2==-1){
			se(num<0){
				escreva("O seu numero é impar e negativo cara")
			}senao se(num>0){
				escreva("O seu numero é impar e positivo, que audacioso vc ")
			}senao{
				escreva("cara, esse ai é o zero, não tem dessas de par ou impar, sai dessa")
			}
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */