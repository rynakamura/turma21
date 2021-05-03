programa
{
	
	funcao inicio()
	{
		inteiro horas
		inteiro min
		inteiro seg
		inteiro segTotais
		escreva(" Eai quantos segundos tem o evento?")
		leia(segTotais)
		horas= segTotais/3600
		min= (segTotais%3600)/60
		seg = (segTotais%3600)%60
		escreva("\n Olha só que legal a duração do evento tem "+horas+" horas "+ min+ " min " + seg + " s")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */