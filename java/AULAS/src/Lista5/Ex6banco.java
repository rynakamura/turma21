package Lista5;

import java.util.Locale;
import java.util.Scanner;

public class Ex6banco {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		Banco BBV = new Banco();
		char criarConta=' ';
		String conta,senha;
		
		System.out.println("Criar conta : S/N");
		criarConta = leia.next().toUpperCase().charAt(0);
		if(criarConta !='S') {
			System.exit(0);
		}
		
		while(criarConta =='S') {
			System.out.print("Digite o numero de conta XXXX-X : ");
			conta = leia.next();
			System.out.print("Digite sua nova senha : ");
			senha=leia.next();
			BBV.criarConta(conta, senha);
			System.out.println("Deseja criar mais uma conta?S/N");
			criarConta = leia.next().toUpperCase().charAt(0);
		}
		
		do {
			System.out.println("=====Acessar a Conta=====");
			System.out.print("Insira sua conta : ");
			conta = leia.next();
			System.out.print("Digite sua senha : ");
			senha=leia.next();
			System.out.println(BBV.acessoConta(conta, senha));
		}while(BBV.acessoConta(conta, senha)==true);
		
		
		System.out.println("BEM VINDO A SUA NOVA CONTA !!!!");
		System.out.println(conta);
		//falta completar a exibição de dados do usuario e adicionar a possibilidade de adicionar saldo.
	}
}
