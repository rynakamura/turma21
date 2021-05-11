package Lista6;

public class Cachorro extends Animal {
	private boolean correr;
	private String som="Au Au";

	public Cachorro(String nome, int idade, boolean correr) {
		super(nome, idade);
		this.correr = correr;
	}
	
	
	public boolean isCorrer() {
		return correr;
	}


	public void setCorrer(boolean correr) {
		this.correr = correr;
	}

	
	public String emitirSom() {
		return som;
	}
	
    public void printDog() {
        System.out.println("");
        System.out.println("");
        System.out.println("");
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println("");
        System.out.println("");
        System.out.println("            /~~~~~~~~\\                           _");
        System.out.println("    ##\\__/ @)      ~~~~~~~~\\                     \\ \\ ) )");
        System.out.println("    |              /~~\\~~~~~                ((    |  \\");
        System.out.println("     \\    /           |                          /   |");
        System.out.println("      (~~~   /         \\____________/~~~~~~~~~~~~   /");
        System.out.println("       ~~~~|~                                     /");
        System.out.println("           :                                      |");
        System.out.println("            \\                                     |");
        System.out.println("            |                               /      \\");
        System.out.println("             \\  \\_         :         \\     /~~~\\    |");
        System.out.println("             /   :~~~~~|   :~~~~~~~~~~|   :     :   :");
        System.out.println("            /    :    /    :         /    :    /    :");
        System.out.println("        (~~~     )(~~~     )     (~~~     )(~~~     )");
        System.out.println("         ~~~~~~~~  ~~~~~~~~       ~~~~~~~~  ~~~~~~~~");
        System.out.println("          STOMP     STOMP          STOMP     STOMP");
        System.out.println("");
        System.out.println("");
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println("");
        System.out.println("");
        System.out.println("");
    }
}
