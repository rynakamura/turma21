programa
{

	//10 movimentos - inclusao e exclusao de notas
	//media zero possivel, mas negativa nao
	//aluno deve ter matricula e cpf
	//
	//nome da escola e slogan
	
	funcao inicio()
	{
	const inteiro MOVIMENTACOES = 10
	inteiro matricula
	cadeia cpf
	real pontosTotais = 0.00
	real pontos [MOVIMENTACOES]
	logico status
	inteiro resposta
	inteiro tipoConta
	caracter tipoMovimento
	caracter continuar


	escreva("ESCOLA Grupo 3\n")						//tela 1
	escreva("Assista. Aprenda. Execute \n\n")
	escreva("Digite sua matrﾃｭcula: ")
	leia(matricula)
	escreva("\nDigite seu CPF: ")
	leia(cpf)
	escreva ("\nO aluno estﾃ｡ 1 - ativo ou 2 - inativo? ")
	leia (resposta)
	/*
	se(resposta == 1 )
	{
		status = verdadeiro
	}
	senao
	{
		 status = falso
	}
	*/
	status=(resposta<2)
	escreva("\n 1- BﾃヾICO\n 2- Mﾃ吋IO\n 3- GRADUAﾃ�ﾃグ\n 4- Pﾃ鉄\n 5- MESTRADO\n 6- SAIR\n")
	escreva("DIGITE O Cﾃ泥IGO DA OPﾃ�ﾃグ SELECIONADA: ")
	leia(tipoConta)
	limpa()

	escreva("ESCOLA \n")						//tela 2
	escreva("slogan \n\n")

		se (tipoConta == 1){
			escreva("ENSINO BﾃヾICO\n")
		
		} senao se (tipoConta == 2) {
			escreva("ENSINO Mﾃ吋IO\n")
			
		}senao se (tipoConta == 3) {
			escreva("ENSINO GRADUAﾃ�ﾃグ\n")
			
		}senao se (tipoConta == 4) {
			escreva("ENSINO Pﾃ鉄\n")
			
		}senao se (tipoConta == 5) {
			escreva("ENSINO MESTRADO\n")
			
		}senao se (tipoConta == 6) {
			escreva("SAIR\n")
			
		} senao {
			escreva("Opﾃｧﾃ｣o invﾃ｡lida")
		}

		escreva("\nMatrﾃｭcula: " ,matricula, "\n")
		escreva("CPF: " ,cpf, "\n")

		se (status == verdadeiro)
		{
			escreva ("A conta do aluno(a) estﾃ｡ ativa.\n")
		}
		senao
		{
			escreva ("A conta do aluno(a) estﾃ｡ inativa.\n")
		}
		
		escreva("Nota atual: " ,pontosTotais, "\n")
		escreva("\n---MOVIMENTOS---\n")

		para(inteiro i = 0; i < MOVIMENTACOES; i++) {
		escreva("\nMov.",i+1," Digite I para inclusﾃ｣o de notas ou R para retirada de notas: ")
		leia(tipoMovimento)
			se(tipoMovimento == 'I' ou tipoMovimento == 'i') {

				escreva("Pontos totais : "+pontosTotais+"\n")
				
				escreva("Valor a ser incluﾃｭdo na nota: ")
				leia(pontos[i])
				pontosTotais = pontosTotais + pontos[i]
				
				escreva("Continuar? S-sim/N-nﾃ｣o: ")
				leia(continuar)
				se (continuar =='N' ou continuar == 'n') {
					pare
				}
				
			} senao se (tipoMovimento == 'R' ou tipoMovimento == 'r') {

				escreva("Pontos totais : "+pontosTotais+"\n")

				escreva("Valor a ser retirado da nota: ")
				leia(pontos[i])
				pontosTotais = pontosTotais - pontos[i]

				escreva("Continuar? S-sim/N-nﾃ｣o: ")
				leia(continuar)
				se (continuar =='N' ou continuar == 'n') {
					pare
				}
			} senao {
				escreva(" Opﾃｧﾃ｣o invﾃ｡lida")
				i--
			}

		} escreva("\nLIMITE DE 10 MOVIMENTAﾃ�ﾃ髭S\n")
		
		escreva("Nota total: " ,pontosTotais,"\n")

		escolha(tipoConta) {
			caso 5:
				real notaExtra = 10.0//até 10 pontos
				real usoExtra
				inteiro teste
				logico usarCreditoMestrado
				escreva("Gostaria de utilizar os seus creditos? 0-não 1-sim ")
				leia(teste)
				usarCreditoMestrado =(teste>0)
				se (usarCreditoMestrado==verdadeiro){
					escreva("Quantos pontos quer utilizar? Disponivel "+notaExtra+" creditos")
					leia(usoExtra)
					notaExtra-=usoExtra
					pontosTotais+=usoExtra	
					limpa()
					escreva("ENSINO MESTRADO\n")
					escreva("\nMatricula: " ,matricula, "\n")
					escreva("CPF: " ,cpf, "\n")
					se (status == verdadeiro)
					{
						escreva ("A conta do aluno(a) esta ativa.\n")
					}
					senao
					{
						escreva ("A conta do aluno(a) esta inativa.\n")
					}
		
					escreva("Foram adicionados "+usoExtra+" creditos e sobraram "+notaExtra)
					escreva("\nNota total: " ,pontosTotais,"\n")
				}

			pare

		}
		



	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3516; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */