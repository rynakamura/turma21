package Lista1;

import java.util.Scanner;

public class CelsiuspFar {
	public static void main(String args[]) {
		double tempF,tempC;
		String nome;
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Qual o seu nome? ");
		nome = leia.next();
		
		System.out.println("Qual a temperatura em Celsius? ");
		tempC = leia.nextDouble();
		
		tempF= (tempC*1.8)+32;
		//System.out.println("Oi "+nome+", a sua temperatura em Fahrenheit é "+tempF);
		System.out.printf("Oi %s, a sua temperatura em Fahrenheit é %.2f",nome,tempF);//formatação
		
		
	}
}
