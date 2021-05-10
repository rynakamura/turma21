package Lista5;

public class Aviao {
	private int nTurbinas, nAssentos;
	private String marca, operadorAereo;

	public int getnTurbinas() {
		return nTurbinas;
	}

	public void setnTurbinas(int nTurbinas) {
		this.nTurbinas = nTurbinas;
	}

	public int getnAssentos() {
		return nAssentos;
	}

	public void setnAssentos(int nAssentos) {
		this.nAssentos = nAssentos;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getOperadorAereo() {
		return operadorAereo;
	}

	public void setOperadorAereo(String operadorAereo) {
		this.operadorAereo = operadorAereo;
	}
	
	public void Infos() {
		System.out.printf("O nome da empresa produtora do avião : %s \n",marca);
		System.out.printf("O nome da operadora aerea: %s \n",operadorAereo);
		System.out.printf("O numero de turbinas é : %d \n",nTurbinas);
		System.out.printf("O numero de assentos é : %d \n",nAssentos);
	}

}
