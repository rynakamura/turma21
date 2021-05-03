/*
 * 1- A prefeitura de uma cidade fez uma pesquisa entre 20 de seus habitantes, 
 * coletando dados sobre o salário e número de filhos. A prefeitura deseja saber:   
a) média do salário da população; 
b) média do número de filhos; 
c) maior salário; 
d) percentual de pessoas com salário até R$100,00.  

 */

programa
{
	
	funcao inicio()
	{
		real mediaS=0.00
		real mediaF=0.00
		real maiorS=0.00
		real Smenor100=0.00
		real salario
		real filhos
		inteiro x=0
		para(x;x<3;x++){
			escreva("manda o salario ai ")
			leia(salario)
			mediaS+=salario
			escreva("manda o numero de filhos ai ")
			leia(filhos)
			mediaF+=filhos
			se(salario>maiorS){
				maiorS=salario
			}
			se(salario<100){
				Smenor100++
			}
		}
		mediaS=mediaS/x
		escreva("\na média de salario é " +mediaS)
		
		mediaF=mediaF/x
		escreva("\na média de filhos é " +mediaF)		

		escreva("\nO maior salario é " +maiorS)

		Smenor100=(Smenor100/x)*100
		escreva("\na porcentagem de salarios menores que 100 reais é " +Smenor100+"%")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */