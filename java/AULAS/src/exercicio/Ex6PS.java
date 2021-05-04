/*
 * Construa um programa em c que, tendo como dados de entrada dois pontos 
 * quaisquer no plano, P(x1, y1) e P(x2, y2), escreva a distância entre eles.
 *  A fórmula da distancia entre 2 pontos. 
 */

package exercicio;

import java.text.DecimalFormat;
import java.util.Scanner;

public class Ex6PS {
	public static void main(String args[]) {
		double x1,x2,y1,y2,d;
		Scanner leia = new Scanner(System.in);
		DecimalFormat df = new DecimalFormat("#.##");
		
		System.out.println("Sabendo as coordenadas (x1,y1), qual o valor de x1");
		x1=leia.nextDouble();
		System.out.println("Sabendo as coordenadas (x1,y1), qual o valor de y1");
		y1=leia.nextDouble();
		System.out.println("Sabendo as coordenadas (x2,y2), qual o valor de x2");
		x2=leia.nextDouble();
		System.out.println("Sabendo as coordenadas (x2,y2), qual o valor de y2");	
		y2=leia.nextDouble();
		
		d=Math.sqrt((Math.pow(x2-x1, 2.0))+Math.pow(y2-y1, 2.0));
		System.out.println(df.format(d));
	}
}
