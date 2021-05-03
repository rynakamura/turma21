programa
{
	
	funcao inicio()
	{
		cadeia times[4]= {"SPFC","SANTOS","PALMEIRAS","RED BULL BRAGANTINO"}
		inteiro pontos[4]
		caracter resultado

		para (inteiro rodada= 0;rodada<4;rodada++){
			escreva("Rodada : "+(rodada+1)+"\n")
			para(inteiro t=0;t<4;t++){
				escreva("O time " +times[t]+" ganhou? ")
				leia(resultado)
				se(resultado=='g'ou resultado=='G'){
					pontos[t]+=3
				}senao se(resultado=='e'ou resultado=='E'){
					pontos[t]+=1
				}senao se(resultado=='p'ou resultado=='P'){
					pontos[t]+=0
				}
			}
			limpa()
		}

		escreva("FIM DO CAMPEONATO\n")
		escreva("---------------------------------------------------------------------\n")
		para(inteiro x=0;x<4;x++){
			escreva("O time "+times[x]+" fez " +pontos[x]+" pontos ao fim das rodadas\n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 423; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */