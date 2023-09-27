import java.util.Scanner;
import java.util.Locale;
public class Main {
	public static void main(String[] args) {
		Locale.setDefault(new Locale("en", "US"));
		Scanner sc = new Scanner(System.in);
		
		int a = Integer.parseInt(sc.next());
		float b = Float.parseFloat(sc.next());
		char c = sc.next().charAt(0);
		String[] d = new String[50];
		String input = sc.nextLine();
		d = input.split("");
		String sd=""; 
		for(int i=1 ; i< d.length; i++) sd+=d[i];
		
		System.out.printf("%d%.6f%c%s\n",a,b,c,sd);
		System.out.printf("%d\t%.6f\t%c\t%s\n",a,b,c,sd);
		System.out.printf("%10d%10.6f%10c%10s\n",a,b,c,sd);
		
		sc.close();
	}
}