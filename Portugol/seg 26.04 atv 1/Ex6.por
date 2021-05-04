programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real x1
		real y1
		real x2
		real y2
		real dist

		escreva("Sabendo o seu ponto (x1,y1), escreva o seu x1 ")
		leia(x1)
		escreva("agora o y1 ")
		leia(y1)
		escreva("Sabendo o seu ponto (x2,y2), escreva o seu x2 ")
		leia(x2)
		escreva("agora o y2 ")
		leia(y2)

		dist = mat.raiz((mat.potencia(x2-x1,2.0)+mat.potencia(y2-y1,2.0)), 2.0)
		escreva(dist)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */