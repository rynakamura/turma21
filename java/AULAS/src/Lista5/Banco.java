package Lista5;

public class Banco {
	private String conta;
	private int saldo,nContas=5,containi;
	private String contasAbertas[] = {"","","","",""};
	private String senhasAbertas[] =new String[nContas];
	private boolean aprovado=true;
	
	public int getSaldo() {
		return saldo;
	}

	public void setSaldo(int saldo) {
		this.saldo = saldo;
	}

	public void criarConta(String contaNova,String senhaNova) {
		for(int x=0;x<nContas;x++) {
			if(contasAbertas[x]=="") {
				senhasAbertas[x]=senhaNova;
				contasAbertas[x]=contaNova;
				break;
			}
		}
	}
	public void getContasAbertas() {
		//return contasAbertas;
		for(int x=0;x<nContas;x++) {
			System.out.println(contasAbertas[x]);
		};
	}
	public boolean acessoConta(String conta,String senha) {
		for(int x=0;x<nContas;x++) {
			if(conta.equals(contasAbertas[x])) {
				if(senha.equals(senhasAbertas[x])) {
					return aprovado=false;
					
				}
				
			}
		}return aprovado =true;
	}
	public String gerarConta() {
		 containi =(int)(Math.random()*10000);
		 int digito =(int)(Math.random()*10);
		 return conta =containi+"-"+digito;
	}
	
}
