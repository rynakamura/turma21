programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real a
		real b
		real c
		real r
		real s
		real d
		escreva("coloque a")
		leia(a)
		escreva("coloque b")
		leia(b)
		escreva("coloque c")
		leia(c)

		r= mat.potencia(a+b,2)
		s= mat.potencia(c+b,2)

		d=( r+s)/2
		escreva("O valor de d é "d)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 278; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */