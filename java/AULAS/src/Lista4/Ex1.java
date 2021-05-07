package Lista4;

import java.util.Locale;

public class Ex1 {
	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		//a)
		int A[] ={1,0,5,-2,-5,7};
		int soma = 0;
		//b)
		soma+=(A[0]+A[1]+A[5]);
		
		System.out.println(soma);
		
		//c)
		A[4]=100;
		
		for(int x = 0;x<A.length;x++) {
			System.out.print(A[x]+", ");
		}
	}
}
