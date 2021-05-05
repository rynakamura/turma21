package Lista1;

import java.util.Locale;
import java.util.Scanner;

public class ImpostoDeRenda {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		
		String nome;
		char genero=' ';
		double salario=0.00, salarioAnual=0.00;
		boolean emergencial=false;
		char resposta;
		
		
		System.out.print("Digite o seu nome : ");
		nome = leia.nextLine();
		System.out.print("Digite o seu genero (M/F/O) : ");
		genero = leia.next().charAt(0);
		System.out.print("Recebeu Emergencial? : (0-não/1-sim)");
		resposta = leia.next().toUpperCase().charAt(0);
		System.out.print("Digite o seu salario mensal : ");
		salario = leia.nextDouble();
		
		emergencial = (resposta=='S');
		
		
		//emergencial = leia.nextBoolean();
		
		if(emergencial == true) {
			if(salario < 5000.00) {
				System.out.println("Não pagará imposto e poderá continuar recebendo emergencial");
				
			}else if (salario>=5000 && salario<6000){
				System.out.println("Situação fraudelenta, divida de 3000 reais + imposto de 15%");
			}else if(salario>=6000 && salario<10000) {
				System.out.println("Situação fraudelenta, divida de 3000 reais + imposto de 17%");
			}else if(salario>=10000) {
				System.out.println("Situação fraudelenta, divida de 3000 reais + imposto de 25%");
				
			}	
			
		}else {
			if(salario < 5000.00) {
				System.out.println("Não pagará imposto");
				
			}else if (salario>=5000 && salario<6000){
				System.out.println("Imposto de 15%");
			}else if(salario>=6000 && salario<10000) {
				System.out.println("Imposto de 17%");
			}else if(salario>=10000) {
				System.out.println("Imposto de 25%");
			}	
			
		}
		
		
		
		
	}

}
