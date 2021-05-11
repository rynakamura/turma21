package Lista6;

public class Preguica extends Animal{
	private boolean subir;
	private String som="aaaaaaah";

	public Preguica(String nome, int idade, boolean subir) {
		super(nome, idade);
		this.subir = subir;
	}
	



	
	
	public boolean isSubir() {
		return subir;
	}






	public void setSubir(boolean subir) {
		this.subir = subir;
	}






	public String emitirSom() {
		return som;
	}
}
