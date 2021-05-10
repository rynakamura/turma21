package Lista5;

import java.util.Locale;

public class Ex2aviao {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Aviao av1 = new Aviao();
		
		av1.setMarca("Embraer");
		av1.setnAssentos(67);
		av1.setnTurbinas(5);
		av1.setOperadorAereo("Tam");
		//av1.Infos();
		System.out.println("-------------------------------------");
		System.out.println(av1.getMarca());
		System.out.println(av1.getOperadorAereo());
		System.out.println(av1.getnTurbinas());
		System.out.println(av1.getnAssentos());
		
	}
}
