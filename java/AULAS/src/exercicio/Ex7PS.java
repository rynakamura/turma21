package exercicio;

import java.util.Scanner;

public class Ex7PS {
	public static void main(String[] args) {
		double a,b,c,d,e,f,x,y;
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Escreva os valores de a,b,c,d,e,f intercalando com um enter ");
		a=leia.nextDouble();
		b=leia.nextDouble();
		c=leia.nextDouble();
		d=leia.nextDouble();
		e=leia.nextDouble();
		f=leia.nextDouble();
		
		x=(c*e-b*f)/(a*e-b*d);
		y=(a*f-c*d)/(a*e-b*d);
		
		System.out.println("Os valores de x e y são respectivamente : "+x+", "+y);
	}
}
