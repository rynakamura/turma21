package exemplos;

import java.util.Locale;
import java.util.Scanner;

public class Retangulos {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);

		int nRetangulo = 2;
		double base, altura, area1, area2;

		System.out.printf("Insira a base do retangulo %d : ", (1));
		base = leia.nextDouble();
		System.out.printf("Insira a altura do retangulo %d: ", (1));
		altura = leia.nextDouble();

		area1 = base * altura;

		System.out.printf("Insira a base do retangulo %d : ", (2));
		base = leia.nextDouble();
		System.out.printf("Insira a altura do retangulo %d: ", (2));
		altura = leia.nextDouble();

		area2 = base * altura;

		if (area2 > area1) {
			System.out.printf("O retangulo 2 é maior que o 1 em %.2f unidades de area", (area2 - area1));
		} else if (area2 < area1) {
			System.out.printf("O retangulo 1 é maior que o 2 em %.2f unidades de area", (area1 - area2));
		} else {
			System.out.println("Os retangulos possuem a mesma area");
		}
		System.out.printf("\nO retangulo 1 possui area de %.2f e o retangulo 2 possui area de %.2f", area1, area2);
	}
}
