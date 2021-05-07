package exemplos;

import java.util.Locale;
import java.util.Scanner;

public class Turma21 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner leia = new Scanner(System.in);
		String alunos[] = {"Alexandre Salerno","Alexsander da Silva Sousa","Aline Moreira Brilhante","Ana Flávia Porto Silva Neves","Andára Finot da Silva","arthur reis allen","Barbara dos Santos","Bruno Wesley Callachi Rocha","Dafhne Noemi da Silva Novais","David da Costa Mariano","Elielthon Soares de Souza","Erika Rosany de Almeida Lima","Fabricio Siqueira Macedo","Fernando Salomão Constancio","Giovanna Cirillo Torres","Guilherme Mendes Carvalho","Guilherme Monteiro Lopes","Isabelli Santos Silva","Israel Dantas da Silva","Jessica Yuki Toyota","Jonatas Michel de Cardoso Vieira","José Luis Correia dos Santos","Juliana Brito Favero Ribeiro","Lorrans Matildes Facca","Lucas Teodoro de Sousa","Maria Luísa Maricato","Mateus Rosendo Firmino de Oliveira","Matheus de Souza Barbosa","Nathalia Beatriz Silva Pereira","Pedro Henrique de Azevedo Magalhães","Renato Novais da Silva","Renato Yukio Ossiama Nakamura","Robson de Jesus Vasconcelos","Tainah Vinha","Vinicius Martins Santos"};
		int notas[]= new int[alunos.length];
		int ativo[]= new int[alunos.length];
		int resultado = 0;
		int matricula = 0;
		char continua = ' ';
		
		System.out.println("Grupo G 1");
		System.out.println("Lista de Alunos : ");
		System.out.println("-------------------------------------------------------");
		
		for(int x=0;x<alunos.length;x++) {
			System.out.printf("G1-%d - %s \n",(x+1),alunos[x]);
			
		}
		System.out.println("-------------------------------------------------------");
		
		do {
			System.out.print("Digite a matricula do aluno para cadastro de nota : ");
			matricula = leia.nextInt();
			System.out.printf("G1-%d : %s",matricula,alunos[(matricula-1)]);
			System.out.print("\nDigite a nota do aluno : ");
			resultado = leia.nextInt();
			ativo[(matricula -1)]++;
			notas[(matricula -1)]=+ resultado;
			System.out.println("Continua?");
			continua = leia.next().toUpperCase().charAt(0);
		}while(continua=='S');
		
		System.out.println("-------------------------------------------------------");
		for(int y=0;y<alunos.length;y++) {
			if(ativo[y]!=0) {
				System.out.printf("O aluno %s teve nota %d \n",alunos[y],notas[y]);
				
			}
		}
	}
	
}
