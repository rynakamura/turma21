/*
 * 3) Desenvolva um sistema em que:
Leia 4 (quatro) números;
Calcule o quadrado de cada um;
Se o valor resultante do quadrado do terceiro for >= 1000, imprima-o e finalize;
Caso contrário, imprima os valores lidos e seus respectivos quadrados.

 */

programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real num1
		real num2
		real num3
		real num4

		real qua1
		real qua2
		real qua3
		real qua4

		escreva("escolha 4 números e digite o primeiro aqui: ")
		leia(num1)
		escreva("agora o numero 2: ")
		leia(num2)
		escreva("agora o numero 3: ")
		leia(num3)
		escreva("agora o numero 4: ")
		leia(num4)

		qua1= mat.arredondar(mat.potencia(num1,2.00), 2)
		qua2= mat.arredondar(mat.potencia(num2,2.00), 2)
		qua3= mat.arredondar(mat.potencia(num3,2.00), 2)
		qua4= mat.arredondar(mat.potencia(num4,2.00),2)

		se(qua3<1000){
			escreva("\nO número 1 ao quadrado equivale a "+qua1)
			escreva("\nO número 2 ao quadrado equivale a "+qua2)
			escreva("\nO número 3 ao quadrado equivale a "+qua3)
			escreva("\nO número 4 ao quadrado equivale a "+qua4)
		}senao{
			escreva("O terceiro número ao quadrado é maior que 1000 e equivale a " + qua3)			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 848; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */