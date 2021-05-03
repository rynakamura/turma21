programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro dia
		inteiro mes
		inteiro ano
		inteiro diasTotais
		escreva("Olá, qual o seu nome?")
		leia(nome)
		escreva("\n Eai " + nome+ " quantos dias de vida você tem?")
		leia(diasTotais)
		ano= diasTotais/365
		mes= (diasTotais%365)/30
		dia = (diasTotais%365)%30
		escreva("\n Olha só que legal você tem "+ano+" ano "+ mes+ " meses " + dia + " dias")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 410; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */