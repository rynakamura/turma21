package Lista6;

import java.util.Locale;

public class EscolhaAnimal {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		
		Cachorro doguinho = new Cachorro("Givaldo",5,true);
		Cavalo cavalinho = new Cavalo("Reginalda",20,false);
		Preguica preguica1 = new Preguica("Ademir",7,true);
		
		System.out.println("Olha o Doguinho!!");
		doguinho.printDog();
		System.out.printf("%s, que tem %d anos, disse : %s\n",doguinho.getNome(),doguinho.getIdade(),doguinho.emitirSom());
		
		System.out.println("---------------------------------------------------------------------------------");
		
		System.out.println("Olha o Cavalinho!!");
		cavalinho.printHorse();
		System.out.printf("%s, que tem %d anos, disse : %s\n",cavalinho.getNome(),cavalinho.getIdade(),cavalinho.emitirSom());
		System.out.println("---------------------------------------------------------------------------------");
		
		System.out.println("Olha a Preguiça!!");
		System.out.printf("%s, que tem %d anos, disse : %s\n",preguica1.getNome(),preguica1.getIdade(),preguica1.emitirSom());
	}
}	
