package exemplos;

import java.util.Calendar;
import java.util.Locale;
import java.util.Scanner;

public class EscolaG3 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		final int MOVIMENTACOES = 10;
		int matricula = 0, niver = 0,DIA=0;
		String cpf, inserirNota = "Digite I para inclusão de notas ou R para retirada de notas: ";
		double pontosTotais = 0.00, notaExtra = 0.00, usoExtra = 0.00;
		double pontos[] = new double[MOVIMENTACOES];
		boolean status, usarCreditoMestrado, bonusGrad=false;
		char resposta, tipoConta, continuar,tipoMovimento,respGrad;

		System.out.println("ESCOLA GERAÇÃO G3");
		System.out.println("Assista. Aprenda. Execute \n");
		System.out.print("Digite sua matrícula: ");
		matricula = leia.nextInt();
		System.out.print("Digite seu CPF: ");
		cpf = leia.next();
		System.out.print("\nStatus da mátricula? (1 - ativa / 2 - inativa) ");
		resposta = leia.next().toUpperCase().charAt(0);
		status = (resposta == '1');
		// segunda tela
		System.out.println("--------------------------------------------------------");
		System.out.println("ESCOLA GERAÇÃO G3");
		System.out.println("Assista. Aprenda. Execute ");
		System.out.println("========================================================");
		System.out.printf("Matrícula: %d \n", matricula);
		System.out.printf("CPF : %s \n", cpf);
		if (status) {
			System.out.println("A conta do aluno(a) está ativa.");
		} else {
			System.out.println("A conta do aluno(a) está inativa.");
		}
		System.out.println("***TIPO DE ENSINO:***");
		System.out.println("\n 1- BÁSICO\n 2- MÉDIO\n 3- GRADUAÇÃO\n 4- PÓS\n 5- MESTRADO\n 6- SAIR\n");
		System.out.print("\nDIGITE O CÓDIGO DA OPÇÃO SELECIONADA: ");
		tipoConta = leia.next().charAt(0);
		System.out.println("--------------------------------------------------------");

		if (tipoConta == '1') {
			System.out.println("ENSINO BÁSICO");
			System.out.print("Digite o dia do seu aniversário : ");
			niver = leia.nextInt();
			System.out.print("Digite o dia de hoje : ");
			DIA = leia.nextInt();
		} else if (tipoConta == '2') {
			System.out.println("ENSINO MÉDIO");
		} else if (tipoConta == '3') {
			System.out.println("ENSINO GRADUÇÃO");
		} else if (tipoConta == '4') {
			System.out.println("ENSINO PÓS");
			inserirNota += " \n(Caso queira utilizar sua nota extra pressione Z) ";
			notaExtra = 5;
		} else if (tipoConta == '5') {
			System.out.println("ENSINO MESTRADO");
			inserirNota += " \n(Caso queira utilizar sua nota extra pressione Z) ";
			notaExtra = 10;
		} else if (tipoConta == '6') {
			System.out.println("SAIR");
			System.exit(1);
		}
		// tela 3
		System.out.println("ESCOLA GERAÇÃO G3");
		System.out.println("Assista. Aprenda. Execute ");
		System.out.println("========================================================");
		System.out.printf("Matrícula: %d \n", matricula);
		System.out.printf("CPF : %s \n", cpf);
		if (status) {
			System.out.println("A conta do aluno(a) está ativa.");
		} else {
			System.out.println("A conta do aluno(a) está inativa.");
		}
		System.out.printf("Nota atual : %.1f \n", pontosTotais);
		System.out.println("---MOVIMENTOS---");
		System.out.println("VOCÊ POSSUI O LIMITE DE 10 MOVIMENTAÇÕES");
		
		for(int i=0;i<MOVIMENTACOES;i++) {
			System.out.printf("Mov. %d %s",(i+1),inserirNota);
			tipoMovimento = leia.next().toUpperCase().charAt(0);
			if(tipoMovimento =='I') {
				System.out.println("Pontos totais : "+pontosTotais);
				System.out.print("Valor a ser inclusão na nota: ");
				pontos[i]=leia.nextDouble();
				pontosTotais += pontos[i];
				if(bonusGrad ==false) {
					if(tipoConta=='3' && pontosTotais<0) {
						System.out.println("Nota negativa. Deseja utilizar seu bônus de graduação? [2 pontos] (S-Sim/N-Não) ");
						respGrad = leia.next().toUpperCase().charAt(0);
						if(respGrad=='S') {
							bonusGrad=true;
							pontosTotais+=2;
							System.out.println("Bônus adicionado com sucesso!!!\n");
						}
						
					}
				}
				System.out.print("Continuar? S-sim/N-não: ");
				continuar =leia.next().toUpperCase().charAt(0);
				if(continuar=='N') {
					i=MOVIMENTACOES;				
				}
			}else if(tipoMovimento =='R') {
				System.out.println("Pontos totais : "+pontosTotais);
				System.out.print("Valor a ser excluido na nota: ");
				pontos[i]=leia.nextDouble();
				pontosTotais -= pontos[i];
				if(bonusGrad ==false) {
					if(tipoConta=='3' && pontosTotais<0) {
						System.out.println("Nota negativa. Deseja utilizar seu bônus de graduação? [2 pontos] (S-Sim/N-Não) ");
						respGrad = leia.next().toUpperCase().charAt(0);
						if(respGrad=='S') {
							bonusGrad=true;
							pontosTotais+=2;
							System.out.println("Bônus adicionado com sucesso!!!\n");
						}
						
					}
				}
				System.out.print("Continuar? S-sim/N-não: ");
				continuar =leia.next().toUpperCase().charAt(0);
				if(continuar=='N') {
					i=MOVIMENTACOES;				
				}
			}else if(tipoMovimento =='Z') {
				System.out.println("Pontos totais : "+pontosTotais);
				System.out.printf("Valor a ser inclusão na nota: (Disponível %.1f pontos)",notaExtra);
				usoExtra = leia.nextDouble();
				if(usoExtra<=notaExtra) {
					notaExtra-= usoExtra;
					pontosTotais+=usoExtra;
					i--;
					System.out.println("Foram adicionados "+usoExtra+" pontos e sobraram "+notaExtra);
					System.out.print("Continuar? S-sim/N-não: ");
					continuar =leia.next().toUpperCase().charAt(0);
					if(continuar=='N') {
						i=MOVIMENTACOES;				
					}					
				}else {
					System.out.println("Não possui essa nota extra para ser adicionada, volte a inclusão de notas");
					i--;
				}
			}else {
				i--;
			}
		}
		System.out.println("--------------------------------------------------------");
		System.out.println("ESCOLA GERAÇÃO G3");
		System.out.println("Assista. Aprenda. Execute ");
		System.out.println("========================================================");
		System.out.printf("Matrícula: %d \n", matricula);
		System.out.printf("CPF : %s \n", cpf);
		if (status) {
			System.out.println("A conta do aluno(a) está ativa.");
		} else {
			System.out.println("A conta do aluno(a) está inativa.");
		}
		if (tipoConta == '1') {
			System.out.println("ENSINO BÁSICO");
			if(niver == DIA) {
				pontosTotais = (pontosTotais*0.1)+ pontosTotais;
				System.out.println("Parabéns! Você tem direito a um acréscimo bônus de 10% na sua nota final!");
				System.out.printf("\nSua nota final com o bônus é de: %.1f" ,pontosTotais);			
			}else {
				System.out.println("\nVocê não tem direito ao bônus de aniversário");
				System.out.println("Pontos totais : "+pontosTotais);
			}
		} else if (tipoConta == '2') {
			System.out.println("ENSINO MÉDIO");
			System.out.print("\nDeseja realizar a impressão do seu boletim? S-sim / N-não ");
			tipoMovimento=leia.next().toUpperCase().charAt(0);
			if(tipoMovimento=='S') {
				for(int i=3;i>0;i--) {
					System.out.println("Voce tem "+ (i-1)+ " solicitação(ões) para impressão do boletim este mês\n");
					for(int j=0;j<MOVIMENTACOES;j++) {
						System.out.printf("Atividade : %d \t Pontuação : %.1f \n",(j+1),pontos[j]);
						
					}
					if(i>1) {
						System.out.println("\nDeseja solicitar o boletim novamente? S-sim/N-não: ");
						tipoMovimento=leia.next().toUpperCase().charAt(0);
						if(tipoMovimento=='N') {
							i=0;
						}
					}
				}
			}
		} else if (tipoConta == '3') {
			System.out.println("ENSINO GRADUÇÃO");
			System.out.println("Pontos totais : "+pontosTotais);
			
		} else if (tipoConta == '4') {
			System.out.println("ENSINO PÓS");
			System.out.print("Deseja utilizar os seus creditos? S-sim / N-não");
			tipoMovimento=leia.next().toUpperCase().charAt(0);
			if(tipoMovimento=='S') {
				System.out.println("Quantos pontos quer utilizar? Disponivel "+notaExtra+" creditos");
				usoExtra = leia.nextDouble();
				if(usoExtra<=notaExtra) {
					notaExtra-= usoExtra;
					pontosTotais+=usoExtra;
					System.out.println("Foram adicionados "+usoExtra+" pontos e sobraram "+notaExtra);		
				}else {
					System.out.println("Não possui essa nota extra para ser adicionado");
					
				}
			}
			System.out.println("Pontos totais : "+pontosTotais);
				
		} else if (tipoConta == '5') {
			System.out.println("ENSINO MESTRADO");
			System.out.print("Deseja utilizar os seus creditos? S-sim / N-não");
			tipoMovimento=leia.next().toUpperCase().charAt(0);
			if(tipoMovimento=='S') {
				System.out.println("Quantos pontos quer utilizar? Disponivel "+notaExtra+" creditos");
				usoExtra = leia.nextDouble();
				if(usoExtra<=notaExtra) {
					notaExtra-= usoExtra;
					pontosTotais+=usoExtra;
					System.out.println("Foram adicionados "+usoExtra+" pontos e sobraram "+notaExtra);		
				}else {
					System.out.println("Não possui essa nota extra para ser adicionado");
					
				}
			}
			System.out.println("Pontos totais : "+pontosTotais);
				
		}
	}
}
