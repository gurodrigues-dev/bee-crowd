import java.io.IOException;
import java.util.Scanner;

public class Main {
	
    public static void main(String[] args) throws IOException {
    	Scanner leitor = new Scanner(System.in);
    	int T = leitor.nextInt();
    	int N;
    	while (T != 0) {
    		for (int i = 1; i <= T; i++) {
    			N = leitor.nextInt();
    			if (N % 2 != 0) System.out.println((N * 2) - 1);
    			else System.out.println((N * 2) - 2);
    		}
    		
    		T = leitor.nextInt();
    	}
    }
	
}