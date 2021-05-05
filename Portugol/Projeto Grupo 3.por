programa
{

	//10 movimentos - inclusao e exclusao de notas
	//media zero possivel, mas negativa nao
	//aluno deve ter matricula e cpf
	//
	//nome da escola e slogan
	inclua biblioteca Calendario
	inclua biblioteca Util

	funcao real pedirCreditoPos() 
	{
		real credito = 0.00
		escreva("\nDigite o valor dos creditos(limite 5 pontos): ")
		leia(credito)
		retorne credito
	}
	
	funcao inicio()
	{
	const inteiro MOVIMENTACOES = 10
	inteiro matricula
	cadeia cpf
	real pontosTotais = 0.00
	real pontos [MOVIMENTACOES]
	inteiro pontosB = 10
	logico status
	inteiro resposta
	inteiro tipoConta,contador=0
	caracter tipoMovimento
	caracter continuar
	inteiro niver=0
	logico bonusGrad = falso
	inteiro respGrad
	cadeia inserirNota = " Digite I para inclusão de notas ou R para retirada de notas: "
	real notaExtra = 0.00
	real usoExtra=0.00
	logico usarCreditoMestrado


	escreva("ESCOLA GERAÇÃO G3\n")						//tela 1
	escreva("Assista. Aprenda. Execute \n\n")
	escreva("Digite sua matrícula: ")
	leia(matricula)
	escreva("\nDigite seu CPF: ")
	leia(cpf)
	escreva ("\nStatus da mátricula? (1 - ativa / 2 - inativa) ")
	leia (resposta)

	se(resposta == 1 )
	{
		status = verdadeiro
	}
	senao
	{
		 status = falso
	}
	limpa()
	escreva("ESCOLA GERAÇÃO G3\n")
	escreva("Assista. Aprenda. Execute\n")
	escreva("=========================")
	escreva("\nMatrícula: " ,matricula, "\n")
	escreva("CPF: " ,cpf, "\n")
	se (status == verdadeiro)
		{
			escreva ("A conta do aluno(a) está ativa.\n\n")
		}
		senao
		{
			escreva ("A conta do aluno(a) está inativa.\n\n")
		}
	
	escreva("\n***TIPO DE ENSINO:***")
	escreva("\n 1- BÁSICO\n 2- MÉDIO\n 3- GRADUAÇÃO\n 4- PÓS\n 5- MESTRADO\n 6- SAIR\n")
	escreva("\nDIGITE O CÓDIGO DA OPÇÃO SELECIONADA: ")
	leia(tipoConta)
	
		se (tipoConta >= 1 e tipoConta <= 5) {
			limpa()
			
			escreva("ESCOLA GERAÇÃO G3\n")				//tela 2
			escreva("Assista. Aprenda. Execute.\n")
			escreva("=========================\n\n")
		
				se (tipoConta == 1){
					escreva("ENSINO BÁSICO\n")
					escreva("Digite o dia do seu aniversário: ")
					leia(niver)
				
				} senao se (tipoConta == 2) {
					escreva("ENSINO MÉDIO\n")
					
				}senao se (tipoConta == 3) {
					escreva("ENSINO GRADUÇÃO\n")
					
				}senao se (tipoConta == 4) {
					escreva("ENSINO PÓS\n")
					
				}
				senao se (tipoConta == 5) {
					escreva("ENSINO MESTRADO\n")
					// adicionar notas extras a qualquer momento
					inserirNota+=" (Caso queira utilizar sua nota extra pressione Z) "
					notaExtra=10.0
					// fim da parte extra
					
				}
				senao se (tipoConta == 6) {
					escreva("SAIR\n")
					
				}
				
				escreva("\nMatrícula: " ,matricula, "\n")
				escreva("CPF: " ,cpf, "\n")
		
				se (status == verdadeiro)
				{
					escreva ("A conta do aluno(a) está ativa.\n")
				}
				senao
				{
					escreva ("A conta do aluno(a) está inativa.\n")
				}
				
				escreva("Nota atual: " ,pontosTotais, "\n")
				escreva("\n---MOVIMENTOS---\n")
				escreva("\nVOCÊ POSSUI O LIMITE DE 10 MOVIMENTAÇÕES\n")
		
				para(inteiro i = 0; i < MOVIMENTACOES; i++) {
				escreva("\nMov.",i+1, inserirNota )
				leia(tipoMovimento)
					se(tipoMovimento == 'I' ou tipoMovimento == 'i') {
		
						escreva("Pontos totais : "+pontosTotais+"\n")
						
						escreva("Valor a ser inclusão na nota: ")
						leia(pontos[i])
						pontosTotais = pontosTotais + pontos[i]
		
						se(bonusGrad == falso){
						se(tipoConta == 3 e pontosTotais <0){
							escreva("\nNota negativa. Deseja utilizar seu bônus de graduação? [máx. 2 pontos] (1-Sim/2-Não) ")
							leia(respGrad)
							se (respGrad == 1){
								bonusGrad=verdadeiro
								pontosTotais = pontosTotais + 2
								escreva("\n\nBônus adicionado com sucesso!!!\n")
								escreva("\nPontos totais : "+pontosTotais+"\n\n")
							}
						}
						}
						
						escreva("Continuar? S-sim/N-não: ")
						leia(continuar)
						se (continuar =='N' ou continuar == 'n') {
							pare
						}
						
					} senao se (tipoMovimento == 'R' ou tipoMovimento == 'r') {
		
						escreva("Pontos totais : "+pontosTotais+"\n")
		
						escreva("Valor a ser retirado da nota: ")
						leia(pontos[i])
						pontosTotais = pontosTotais - pontos[i]
		
						se(bonusGrad == falso){
						se(tipoConta == 3 e pontosTotais <0){
							escreva("\nNota negativa. Deseja utilizar seu bônus de graduação? [máx. 2 pontos] (1-Sim/2-Não) ")
							leia(respGrad)
							se (respGrad == 1){
								bonusGrad=verdadeiro
								pontosTotais = pontosTotais + 2
								escreva("\n\nBônus adicionado com sucesso!!!\n")
								escreva("Pontos totais : "+pontosTotais+"\n\n")
							}
						}
						}
		
						escreva("Continuar? S-sim/N-não: ")
						leia(continuar)
						se (continuar =='N' ou continuar == 'n') {
							pare
						}
					} 
					senao se((tipoMovimento=='Z' ou tipoMovimento=='z')e tipoConta==5 ){
						escreva("Pontos totais : "+pontosTotais+"\n")
		
						escreva("Quantos pontos quer utilizar? Disponivel "+notaExtra+" creditos")
						leia(usoExtra)
						se(usoExtra<=notaExtra){
							
							notaExtra-=usoExtra
							pontosTotais+=usoExtra	
							i--
							escreva("Foram adicionados "+usoExtra+" creditos e sobraram "+notaExtra)
							escreva("Continuar? S-sim/N-nﾃ｣o: ")
							leia(continuar)
							se (continuar =='N' ou continuar == 'n') {
								pare
							}
						}senao{
							escreva("Não possui essa nota extra para ser adicionada, volte a inclusão de notas")
							i--
							
						}
					}
					
					senao {
						escreva(" Opção Inválida")
						i--
						}
		
				} 
				
				escreva("\n\nNota total: " ,pontosTotais,"\n")
		
				escolha(tipoConta) 
				{
					caso 1:
					escreva("\nDeseja usar o acréscimo bônus de aniversário, caso esteja disponível? S-sim/N-não  ")
					leia(continuar)
					limpa()
					escreva("ESCOLA GERAÇÃO G3\n")	
					escreva("Assista. Aprenda. Execute  \n\n")
					escreva ("Ensino Básico \n")
					escreva("\nMatrícula: " ,matricula, "\n")
					escreva("CPF: " ,cpf, "\n")
						
					se(continuar == 'S' ou continuar == 's'){
						se(niver == Calendario.dia_mes_atual()) {
							pontosTotais = (pontosTotais*0.1)+ pontosTotais
							escreva("\nParabéns! Você tem direito a um acréscimo bônus de 10% na sua nota final!\n")
							escreva("\nSua nota final com o bônus é de: " ,pontosTotais)
						}senao {
							escreva("\nVocê não tem direito ao bônus de aniversário")
						}
					} senao {
						escreva("Operação finalizada")
					}
					pare
					
					
					caso 2:
		/*Solicitar ao final dos 10 movimentos ou ao pedido de sair se o mesmo 
		 * deseja solicitar impressão do boletim, limitando em apenas 3 emissões no mês.
		 */
						escreva ("\nDeseja realizar a impressão do seu boletim? S-sim / N-não ")
						leia (tipoMovimento)
						limpa()
						se (tipoMovimento =='S' ou tipoMovimento == 's') 
						{
							para(inteiro i= 3; i > 0; i--)
							{
														limpa()
								escreva("ESCOLA GERAÇÃO G3\n")						//tela 3
								escreva("Assista. Aprenda. Execute  \n\n")
								escreva ("Ensino Médio \n")
								escreva("\nMatrícula: " ,matricula, "\n")
								escreva("CPF: " ,cpf, "\n")
								
								escreva("Voce tem ", (i-1), " solicitação(ões) para impressão do boletim este mês\n")
								escreva("\n---BOLETIM MENSAL---\n\n")
								
								para (inteiro j = 0; j < pontosB; j++) 
								{
									escreva("Atividade: " , (j+1) , " Pontuação: " ,  pontos[j] , "\n")
									
								} 
					
								se (i > 1)
									{ 
										
										escreva("\nDeseja solicitar o boletim novamente? S-sim/N-não: ")
										leia(tipoMovimento)
										se (tipoMovimento == 'N' ou tipoMovimento =='n') 
										{
											i = 0 //aqui sai porque i = 0 sai do looping para
										}
									}
							}
						}
						senao
						{
								limpa()
								escreva("ESCOLA GERAÇÃO G3\n")						//tela 3
								escreva("Assista. Aprenda. Execute  \n\n")
								escreva ("Ensino Médio \n")
								escreva("\nMatrícula: " ,matricula, "\n")
								escreva("CPF: " ,cpf, "\n")
							}
					pare
		
					caso 3:
						limpa()
						escreva("ESCOLA GERAÇÃO G3\n")
						escreva("Assista. Aprenda. Execute\n\n")
						escreva("Ensino Graduação\n")
						escreva("\nMatrícula: " ,matricula, "\n")
						escreva("CPF: " ,cpf, "\n")
						se (status == verdadeiro)
							{
								escreva ("A conta do aluno(a) está ativa.\n\n")
							}
							senao
							{
								escreva ("A conta do aluno(a) está inativa.\n\n")
							}
						escreva("Nota total: " ,pontosTotais,"\n")
		
					pare
		
					caso 4: 
		
						pontosTotais += pedirCreditoPos()
						limpa()
						
						escreva("ESCOLCA GERAÇÃO G3\n")						//tela 3
						escreva("Assista. Aprenda. Execute  \n\n")
						escreva ("Ensino Pós Graduação \n")
						escreva("\nMatrícula: " ,matricula, "\n")
						escreva("CPF: " ,cpf, "\n")
		
						se (status == verdadeiro)
						{
							escreva ("A conta do aluno(a) está ativa.\n")
						}
						senao
						{
							escreva ("A conta do aluno(a) está inativa.\n")
						}
						escreva("Nota total: " ,pontosTotais,"\n")
		
					pare
		
					caso 5:
		
						inteiro teste=0 
						escreva("Gostaria de utilizar os seus creditos? 0-não 1-sim ")
						leia(teste)
						usarCreditoMestrado =(teste>0)
						se (usarCreditoMestrado==verdadeiro){
							escreva("Quantos pontos quer utilizar? Disponivel "+notaExtra+" creditos")
							leia(usoExtra)
							se(usoExtra<=notaExtra){
								notaExtra-=usoExtra
								pontosTotais+=usoExtra	
								limpa()
							}senao{
								limpa()
								escreva("nao há nota para ser adicionada, o valor máximo foi agregado")
								pontosTotais+=notaExtra
							}
								
							
							escreva("Ensino Mestrado\n")
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
						}senao{
							limpa()
							escreva("Ensino Mestrado\n")
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
				
							escreva("Foram adicionados "+usoExtra+" creditos extras e sobraram "+notaExtra)
							escreva("\nNota total: " ,pontosTotais,"\n")
						}
		
					pare
			
					}
		}senao se(tipoConta >6 )
		{
			limpa()
			escreva("=========================")
			escreva("Opção Inválida")
			escreva("=========================")
			Util.aguarde(2500)//2segundo e meio
			limpa()
			inicio()
		}
		}
		

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10879; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */