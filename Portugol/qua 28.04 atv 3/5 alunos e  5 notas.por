programa
{
	
	funcao inicio()
	{	
		
		cadeia aluno1=""
		real nota1 =0.00
		cadeia aluno2=""
		real nota2=0.00
		cadeia aluno3=""
		real nota3=0.00
		cadeia aluno4=""
		real nota4=0.00
		cadeia aluno5=""
		real nota5=0.00
		
		real notaMax=0.00
		inteiro menorQueCinco=0

		enquanto(aluno5==""){
			se(aluno1=="" e nota1 == 0.00){
				escreva("Qual o seu nome?")
				leia(aluno1)
				escreva("qual foi sua nota?")
				leia(nota1)
				se(nota1>notaMax){
					notaMax=nota1
				}
				se(nota1<5.00){
					menorQueCinco++
				}
			}senao se(aluno2=="" e nota2 == 0.00){
				escreva("Qual o seu nome?")
				leia(aluno2)
				escreva("qual foi sua nota?")
				leia(nota2)
				se(nota2>notaMax){
					notaMax=nota2
				}se(nota2<5.00){
					menorQueCinco++
				}
			}senao se(aluno3=="" e nota3 == 0.00){
				escreva("Qual o seu nome?")
				leia(aluno3)
				escreva("qual foi sua nota?")
				leia(nota3)
				se(nota3>notaMax){
					notaMax=nota3
				}se(nota3<5.00){
					menorQueCinco++
				}
			}senao se(aluno4=="" e nota4 == 0.00){
				escreva("Qual o seu nome?")
				leia(aluno4)
				escreva("qual foi sua nota?")
				leia(nota4)
				se(nota4>notaMax){
					notaMax=nota4
				}se(nota4<5.00){
					menorQueCinco++
				}
			}senao se(aluno5=="" e nota5 == 0.00){
				escreva("Qual o seu nome?")
				leia(aluno5)
				escreva("qual foi sua nota?")
				leia(nota5)
				se(nota5>notaMax){
					notaMax=nota5
				}se(nota5<5.00){
					menorQueCinco++
				}
			}
			
		}
		escreva("nota maxima foi "+notaMax)
		escreva("\n média : "+(nota1+nota2+nota3+nota4+nota5)/5)
		escreva("\nnotas menores que 5 : "+menorQueCinco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1504; 
 * @PONTOS-DE-PARADA = 59;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */