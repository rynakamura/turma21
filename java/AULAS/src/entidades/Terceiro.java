package entidades;

public class Terceiro extends Funcionario{
	private double adicional;
	//teste de programador
	public Terceiro(String nome, String matricula, int horasTrabalhadas, double valorHora, double adicional) {
		super(nome, matricula, horasTrabalhadas, valorHora);
		// TODO Auto-generated constructor stub
		this.adicional = adicional;
	}


	public Terceiro(String nome, String matricula, double adicional) {
		super(nome, matricula);
		this.adicional = adicional;
	}

	@Override
	public void mostrarSalario() {
		System.out.printf("O salario final é %.2f reais\n",(super.getHorasTrabalhadas()*super.getValorHora())+adicional);
	}
	
}
