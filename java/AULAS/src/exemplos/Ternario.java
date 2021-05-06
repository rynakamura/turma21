package exemplos;

import java.util.Scanner;

public class Ternario {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner leia = new Scanner(System.in);
		System.out.println("Digite um numero");
		int valor = leia.nextInt();
		System.out.println(((valor%2)==0) ? "NUMERO PAR": "NUMERO IMPAR");

	}

}
