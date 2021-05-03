/*
 * Escreve um programa que lê duas matrizes N1 (4,6) e N2(4,6) e cria:
a) Uma matriz M1 cujos elementos serão as somas dos elementos de mesma posição 
das matrizes N1 e N2;
b) Uma matriz M2 cujos elementos serão as diferenças dos elementos de mesma posição
das matrizes N1 e N2.

 */

programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{	
		const inteiro linhas=2, colunas = 3
		inteiro N1[linhas][colunas]//matriz 1
		inteiro N2[linhas][colunas]//matriz 2
		inteiro M1[linhas][colunas]//matriz soma
		inteiro M2[linhas][colunas]//matriz subtração
		para (inteiro l = 0;l<linhas;l++){
			para(inteiro c = 0;c<colunas;c++){	
				escreva("vamos construir a primeira matriz\n")
				escreva("escreva o valor da linha " +l+ " e coluna "+c+" :")
				leia(N1[l][c])
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
			para (inteiro l = 0;l<linhas;l++){
				para(inteiro c = 0;c<colunas;c++){	
					escreva("vamos construir a segunda matriz\n")
					escreva("escreva o valor da linha " +l+ " e coluna "+c+" :")
					leia(N2[l][c])
					escreva("sua matriz N1 está assim atualmente :\n")
					para (inteiro l2 = 0;l2<linhas;l2++){
						para(inteiro c2 = 0;c2<colunas;c2++){
							escreva(N2[l2][c2])	
							escreva(" ")	
							}
						escreva("\n")
					}
				Util.aguarde(1000)
				limpa()					
				}
			}
			
			para (inteiro l = 0;l<linhas;l++){
				para(inteiro c = 0;c<colunas;c++){	
					M1[l][c]= N1[l][c]+N2[l][c]
				}
			}

			escreva("A matriz M1 é :\n")
			para (inteiro l = 0;l<linhas;l++){
				para(inteiro c = 0;c<colunas;c++){	
					escreva(M1[l][c])	
					escreva(" ")	
				}
				escreva("\n")
			}
			para (inteiro l = 0;l<linhas;l++){
				para(inteiro c = 0;c<colunas;c++){	
					M2[l][c]= N1[l][c]-N2[l][c]
				}
			}
			escreva("-------------------------------------\n")
			escreva("A matriz M2 é :\n")
			para (inteiro l = 0;l<linhas;l++){
				para(inteiro c = 0;c<colunas;c++){	
					escreva(M2[l][c])	
					escreva(" ")	
				}
				escreva("\n")
			}
		}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 159; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */