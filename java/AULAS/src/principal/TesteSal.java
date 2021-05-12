package principal;

import entidades.Funcionario;
import entidades.Terceiro;

public class TesteSal {
 public static void main(String[] args) {
	Funcionario func1 = new Funcionario("Roger","123",12,5.00);
	Funcionario func2 = new Terceiro("Ronaldo","222",5,12.00,5.00);
	func1.mostrarSalario();
	func2.mostrarSalario();
	
}
}
