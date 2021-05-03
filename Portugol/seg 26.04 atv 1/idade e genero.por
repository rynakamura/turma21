programa
{
	
	funcao inicio(){
	const inteiro ANOATUAL = 2021 //contante usamos caps pra diferenciar
	cadeia nome
	caracter identificacao
	//inteiro identificacao
	inteiro nascimento
	inteiro idade

	escreva("Qual o seu nome? ")
	leia(nome)
	escreva("\nComo você se identifica? (Masculino = M/Feminino = F/Outro = O) ")
	leia(identificacao)
	escreva("\nQue ano você nasceu? ")
	leia(nascimento)

	idade = ANOATUAL- nascimento

	se (idade<18){
		se (identificacao=='M' ou identificacao=='m'){
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é jovem ainda!!")
		}senao se(identificacao=='F' ou identificacao=='f'){
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é jovem ainda!!")
		} senao {
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é jovem ainda!!")
		}
		
	}senao se(idade>=18 e idade<=50){
		se (identificacao=='M' ou identificacao=='m'){
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é um adulto sofredor demais!!")
		}senao se(identificacao=='F' ou identificacao=='f'){
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é uma adulta sofredora demais!!")
		} senao {
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é ume adulte sofredore demais!!")
		}
		
	}senao {
		se (identificacao=='M' ou identificacao=='m'){
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é um idoso brabo demais!!")
		}senao se(identificacao=='F' ou identificacao=='f'){
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é uma idosa braba demais!!")
		} senao {
			escreva(" Olá " +nome+ " você tem aproximadamente "+idade+ " anos  e você é ume idose brabe demais!!")
		}
		
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 33; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */