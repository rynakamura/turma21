programa
{
	
	funcao inicio()
	{
		real fabrica
		real valor
		real distribuidor = 0.28
		real impostos = 0.45

		escreva("Qual o valor de fabrica do carro?")
		leia(fabrica)
		valor = (fabrica*(1+distribuidor))*(1+impostos)
		escreva("O valor final do carro é "+ valor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */