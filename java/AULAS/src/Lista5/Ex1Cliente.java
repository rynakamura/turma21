package Lista5;

import java.util.Locale;
import java.util.Scanner;

public class Ex1Cliente {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		Cliente cliente1 = new Cliente();
		
		System.out.print("Insira o nome do cliente : ");
		//String nome = leia.nextLine();
		cliente1.setNome(leia.nextLine());
		System.out.print("Insira o CPF do cliente : ");
		cliente1.setCpf(leia.next());
		System.out.print("Insira o email do cliente : ");
		cliente1.setEmail(leia.next());
		System.out.print("Insira o ano de nascimento do cliente : ");
		cliente1.setAnoNascimento(leia.nextInt());		
		System.out.print("Insira o CEP do cliente : ");
		cliente1.setCep(leia.next());
		System.out.print("Insira o genero do cliente : ");
		cliente1.setGenero(leia.next().toUpperCase().charAt(0));
		leia.close();
		cliente1.Infos();
	}
}
