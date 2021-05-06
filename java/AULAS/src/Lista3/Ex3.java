package Lista3;

import java.util.Locale;
import java.util.Scanner;

public class Ex3 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		
		int idade=0,menor21=0,maior50=0;
		
		while(idade!=-99) {
			System.out.println("\nDigite a sua idade : (Digite -99 para finalizar)");
			idade = leia.nextInt();
			if((idade<0 && idade>-99) || idade<-100) {
				System.out.println("Idade invalida");
				
			}else if (idade<21 && idade>=0) {
				menor21++;
				System.out.printf("Idade cadastrada com sucesso você tem %d anos \n",idade);
			}else if(idade>50) {
				maior50++;
				System.out.printf("Idade cadastrada com sucesso você tem %d anos \n",idade);
			}else if(idade==-99){
				System.out.printf("Finalizado com sucesso \n");
			}
		}
		leia.close();
		System.out.printf("\n Foram cadastrados %d pessoas com menos de 21 anos e %d com mais de 50 anos",menor21,maior50);
	}
}
