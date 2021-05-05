package exercicio;

import java.io.IOException;
import java.util.Scanner;

public class Infos {
	public static void main(String args[]) throws IOException {
		Scanner leia = new Scanner(System.in);
		String nome;
		int anoNascimento;
		char genero;
		
		System.out.println("Qual o seu nome? ");
		nome = leia.next();//.nextLine() lê a linha inteira
		System.out.println("Em que ano você nasceu? ");
		anoNascimento = leia.nextInt();
		System.out.println("M-masculino,F-feminino,O-outros");
		//genero = (char)System.in.read();
		genero = leia.next().charAt(0);
		
		
		System.out.println("Olá "+nome+" você tem "+(2021-anoNascimento)+" e seu genero é "+genero);
	}
}
