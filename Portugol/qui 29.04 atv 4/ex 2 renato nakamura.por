/*
 * Um dado é lançado 10 vezes e o valor correspondente é anotado. 
 * Faça um programa que gere um vetor com os lançamentos, escreva esse vetor. 
 * A seguir determine e imprima a média aritmética dos lançamentos, contabilize 
 * e apresente também quantas foram as ocorrências da maior pontuação.
 */

programa
{
	
	funcao inicio()
	{
		const inteiro totalLancamentos=5
		inteiro dado[totalLancamentos]
		inteiro lancamento = 0
		real somaDados = 0.00
		real mediaDados = 0.00
		inteiro maiorPontuacao = 0
		inteiro vezesMaiorPontuacao = 0
		
		para(lancamento;lancamento<totalLancamentos;lancamento++){
			escreva("Qual foi o valor do dado? ")
			leia(dado[lancamento])

			somaDados+=dado[lancamento]
			se(dado[lancamento]>maiorPontuacao){
				vezesMaiorPontuacao = 0
				maiorPontuacao= dado[lancamento]
				vezesMaiorPontuacao++
			}senao se(dado[lancamento]==maiorPontuacao){
				vezesMaiorPontuacao++
			}
			limpa()
		}
		mediaDados=somaDados/totalLancamentos
		escreva("a média dos lançamentos foi : "+mediaDados)
		escreva("\na maior pontuação foi : "+maiorPontuacao+" e foi atingido "+vezesMaiorPontuacao+" vezes")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 548; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */