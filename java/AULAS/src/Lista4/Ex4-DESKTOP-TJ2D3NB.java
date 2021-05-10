package Lista4;

import java.util.Locale;
import java.util.Scanner;

public class Ex4 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);

		int[][] matriz1 = new int[2][2];
		int[][] matriz2 = new int[2][2];
		int[][] matriz3 = new int[2][2];
		int min = 0, max = 100;
		int constante = 0;
		char continuar = 'S';
		char escolha = ' ';

		System.out.println("Matriz 1");
		for (int linha = 0; linha < 2; linha++) {
			for (int coluna = 0; coluna < 2; coluna++) {
				matriz1[linha][coluna] = (int) ((Math.random()) * (max - min));
				System.out.print(matriz1[linha][coluna] + "\t");
			}
			System.out.println();
		}

		System.out.println("\nMatriz 2");
		for (int linha = 0; linha < 2; linha++) {
			for (int coluna = 0; coluna < 2; coluna++) {
				matriz2[linha][coluna] = (int) ((Math.random()) * (max - min));
				System.out.print(matriz2[linha][coluna] + "\t");
			}
			System.out.println();
		}

		do {
			System.out.println("OPÇÕES : ");
			System.out.println(
					"(1) somar as duas matrizes\n(2) subtrair a primeira matriz da segunda "
					+ "\n(3) adicionar uma constante as duas matrizes\n(4) imprimir as matrizes ");
			escolha = leia.next().charAt(0);

			if (escolha == '1') {
				System.out.println("Matriz Soma");
				for (int linha = 0; linha < 2; linha++) {
					for (int coluna = 0; coluna < 2; coluna++) {
						matriz3[linha][coluna] = (matriz2[linha][coluna] + matriz1[linha][coluna]);
						System.out.print(matriz3[linha][coluna] + "\t");
					}
					System.out.println();
				}
			} else if (escolha == '2') {
				System.out.println("Matriz Subtração");
				for (int linha = 0; linha < 2; linha++) {
					for (int coluna = 0; coluna < 2; coluna++) {
						matriz3[linha][coluna] = (matriz2[linha][coluna] - matriz1[linha][coluna]);
						System.out.print(matriz3[linha][coluna] + "\t");
					}
					System.out.println();
				}
			} else if (escolha == '3') {
				System.out.print("Escolha uma constante para adicionar : ");
				constante = leia.nextInt();
				System.out.println("Nova Matriz 1");
				for (int linha = 0; linha < 2; linha++) {
					for (int coluna = 0; coluna < 2; coluna++) {
						matriz1[linha][coluna] += constante;
						System.out.print(matriz1[linha][coluna] + "\t");
					}
					System.out.println();
				}

				System.out.println("\nNova Matriz 2");
				for (int linha = 0; linha < 2; linha++) {
					for (int coluna = 0; coluna < 2; coluna++) {
						matriz2[linha][coluna] += constante;
						System.out.print(matriz2[linha][coluna] + "\t");
					}
					System.out.println();
				}

			} else if (escolha == '4') {

				System.out.println("\nMatriz 1");
				for (int linha = 0; linha < 2; linha++) {
					for (int coluna = 0; coluna < 2; coluna++) {
						System.out.print(matriz1[linha][coluna] + "\t");
					}
					System.out.println();
				}

				System.out.println("\nMatriz 2");
				for (int linha = 0; linha < 2; linha++) {
					for (int coluna = 0; coluna < 2; coluna++) {
						System.out.print(matriz2[linha][coluna] + "\t");
					}
					System.out.println();
				}

				System.out.println("\nMatriz da ultima operação");
				for (int linha = 0; linha < 2; linha++) {
					for (int coluna = 0; coluna < 2; coluna++) {
						System.out.print(matriz2[linha][coluna] + "\t");
					}
					System.out.println();
				}

			}
			System.out.print("Deseja continuar? :");
			continuar = leia.next().toUpperCase().charAt(0);

		} while (continuar == 'S');

	}
}
