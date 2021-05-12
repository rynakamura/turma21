package Lista6;

public class Cavalo extends Animal {
	private boolean correr;

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

	@Override
	public String emitirSom() {
		super.setSom("hiin in in hinir");
		return super.getSom();
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
