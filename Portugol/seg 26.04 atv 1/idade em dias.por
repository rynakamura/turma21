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
		escreva("\n Eai " + nome+ " quantos anos você tem?")
		leia(ano)
		escreva("belezinha, agora quantos meses?")
		leia(mes)
		escreva("Show, agora quantos dias?")
		leia(dia)
		diasTotais= 365*ano + 30*mes +dia
		escreva("\n Olha só que legal você tem "+diasTotais+" dias de vida!!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 453; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */