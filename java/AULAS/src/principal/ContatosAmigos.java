package principal;

import java.util.Locale;
import java.util.Scanner;

import entidades.Pessoa;

public class ContatosAmigos {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		Pessoa pe1 = new Pessoa();
		char vivo = ' ';
		
		System.out.print("Insira o nome do amigo : ");
		pe1.nome = leia.nextLine();
		System.out.print("Insira o ano de nascimento : ");
		pe1.anoNascimento = leia.nextInt();
		System.out.print("Insira o genero : ");
		pe1.genero = leia.next().toUpperCase().charAt(0);
		System.out.print("A pessoa está viva? S-sim/N-não");
		vivo = leia.next().toUpperCase().charAt(0);
		pe1.vivo = (vivo=='S');
		
		System.out.println("Cadastro realizado com sucesso!");
		System.out.println(pe1.nome);
		System.out.println(pe1.anoNascimento);
		System.out.println(pe1.genero);
		System.out.println(pe1.vivo);
		System.out.printf("A idade aproximada é %d",pe1.idadeAproximada());
	}
}
