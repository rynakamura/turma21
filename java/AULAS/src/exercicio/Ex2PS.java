/*
 * Faça um sistema que leia a
 *  idade de uma pessoa expressa em dias e 
 *  mostre-a expressa em anos, meses e dias. 
 */

package exercicio;

import java.util.Scanner;

public class Ex2PS {
	public static void main(String args[]) {
	String nome;
	int diasTotais,dias,meses,anos;
	Scanner leia = new Scanner(System.in);
	
	System.out.println("Qual o seu nome? ");
	nome = leia.next();
	System.out.println("Quantos dias de vida você tem?");
	diasTotais = leia.nextInt();
	
	anos=diasTotais/365;
	meses = (diasTotais%365)/30;
	dias = (diasTotais%365)/30;
	
	System.out.println("Olha só "+nome+" você tem "+anos+" anos "+meses+" meses e "+dias+" dias!");
	}
}
