package principal;

import java.util.Locale;
import java.util.Scanner;

import entidades.Funcionario;
import entidades.Terceiro;

public class TesteFuncionario {
	public static void main(String[] args) {
		//teste de usuario
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Digite o nome : ");
		String nome = leia.next();
		System.out.println("Digite a matricula : ");
		String matri = leia.next();
		
		System.out.println("O funcionario é terceiro? 1-sim/2-n ");
		char x = leia.next().charAt(0);
		if(x=='1') {
			System.out.println("Digite o valor do adicional : ");
			double add = leia.nextDouble();
			Funcionario ter1 = new Terceiro(nome,matri,add);
			System.out.println("Digite as horas trabalhadas : ");
			ter1.setHorasTrabalhadas(leia.nextInt());
			System.out.println("Digite o valor por hora : ");
			ter1.setValorHora(leia.nextDouble());
			
			ter1.mostrarSalario();
		}else {
			Funcionario func1 = new Funcionario(nome,matri);
			System.out.println("Digite as horas trabalhadas : ");
			func1.setHorasTrabalhadas(leia.nextInt());
			System.out.println("Digite o valor por hora : ");
			func1.setValorHora(leia.nextDouble());
			
			func1.mostrarSalario();
		}
	

		
		
		
	}
}
