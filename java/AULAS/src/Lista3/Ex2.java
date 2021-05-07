package Lista3;

import java.util.Locale;
import java.util.Scanner;

public class Ex2 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		int num = 0, par = 0, impar = 0;

		for (int x = 0; x < 10; x++) {
			System.out.printf("Escreva o %d número : ", (x + 1));
			num = leia.nextInt();
			if (num <= 0) {
				System.out.println("O número deve ser maior que zero");
				x--;
			} else if ((num % 2 == 0)) {
				System.out.println("O número é par");
				par++;
			} else {
				System.out.println("O número é impar");
				impar++;
			}
		}
		leia.close();
		System.out.printf("Foram digitados %d numeros pares e %d numeros impares", par, impar);
	}
}
