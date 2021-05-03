/*
 * 2) Elabore um sistema que leia as variáveis C e N, respectivamente código e número de horas 
 * trabalhadas de um operário. E calcule o salário sabendo-se que ele ganha R$ 10,00 por hora. 
 * Quando o número de horas exceder a 50 calcule o excesso de pagamento armazenando-o na variável E, 
 * caso contrário zerar tal variável. A hora excedente de trabalho vale R$ 20,00. No final do 
 * processamento imprimir o salário total e o salário excedente.
 */

programa
{
	inclua biblioteca Matematica -->mat
	
	funcao inicio()
	{	
		const real SALARIO1 = 10.00
		const real SALARIO2 = 20.00
		real C	//código
		real N = 0.00	//horas trabalhadas
		real E = 0.00	//excesso

		escreva("Qual o seu código de trabaho?")
		leia(C)
		escreva("Quantas horas você trabalhou?")
		leia(N)
		se(N<=50){
			escreva("Jornada de trabalho tradicional você receberá: R$ "+N*SALARIO1+" !! \n")
		}senao se(N>50){
			E=N-50
			escreva("Jornada de trabalho completa e "+mat.arredondar(E, 2)+" horas extras feitas \n" 
			+"Você receberá: R$ "+mat.arredondar(50*SALARIO1+E*SALARIO2,2)+" ,sendo "+50*SALARIO1+" da sua jornada tradicional"
			+ " e "+E*SALARIO2+" das horas extras")
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 513; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */