package Lista6;

public class Cavalo extends Animal {
	private boolean correr;
	private String som="hiin in in hinir";

	public Cavalo(String nome, int idade, boolean correr) {
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
    public void printHorse() {
        System.out.println("");
        System.out.println("");
        System.out.println("");
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println("");
        System.out.println("");
        System.out.println("           ,---,");
        System.out.println("     _ ___/ /\\|");
        System.out.println(" ,;'( )___, )  ~");
        System.out.println("//  //    '--; ");
        System.out.println("'   \\     | ^");
        System.out.println("     ^     ^");
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println("");
        System.out.println("");
        System.out.println("");
    }
}
