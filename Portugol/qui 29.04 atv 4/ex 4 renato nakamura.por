/*
 * Crie um programa que receba valores do usuário para preencher uma matriz 3X3, 
 * e em seguida, exiba a soma dos valores dela e a soma dos valores da primeira diagonal, 
 * ou seja, diagonal principal.
 */

programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro linhas=3, colunas = 3
		inteiro N1[linhas][colunas]//matriz 1
		inteiro somaTotal = 0
		inteiro somaDiagonal = 0

		para (inteiro l = 0;l<linhas;l++){
			para(inteiro c = 0;c<colunas;c++){	
				escreva("vamos construir a primeira matriz\n")
				escreva("escreva o valor da linha " +l+ " e coluna "+c+" :")
				leia(N1[l][c])
				somaTotal+=N1[l][c]
				se(l==c){
					somaDiagonal+=N1[l][c]
				}
				escreva("sua matriz N1 está assim atualmente :\n")
				para (inteiro l2 = 0;l2<linhas;l2++){
					para(inteiro c2 = 0;c2<colunas;c2++){
						escreva(N1[l2][c2])	
						escreva(" ")	
					}
					escreva("\n")
				}
				Util.aguarde(1000)
				limpa()					
			}	
		}
		escreva("-------------------------------------\n")
		escreva("A matriz é :\n")
		para (inteiro l = 0;l<linhas;l++){
			para(inteiro c = 0;c<colunas;c++){	
					escreva(N1[l][c])	
					escreva(" ")	
			}
				escreva("\n")
		}
		escreva("A soma de todos os valores é : " +somaTotal)
		escreva("\nA soma da diagonal é : " +somaDiagonal)
		}
		
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1028; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */