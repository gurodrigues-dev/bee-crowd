import java.io.IOException;
import java.util.Scanner;
 
public class Main {

	public static void main(String[] args) throws IOException {
		Scanner leitor = new Scanner(System.in);
		while (leitor.hasNext()) {
			String line = readLine(leitor);
			int C = Integer.parseInt(line.split(" ")[0].trim());
			int N = Integer.parseInt(line.split(" ")[1].trim());
			String cript = readLine(leitor);
			String decript = readLine(leitor);
			char[][] cripto = new char[400][C+5000];
			String[] mensagens = new String[C+5000];
			
			for (int i = 0; i < N; i++) {
				mensagens[i] = readLine(leitor);
			}
			
			for (int i = 0; i < C; i++) {
				char c = cript.charAt(i);
				char d = decript.charAt(i);
				cripto[0][i] = c;
				cripto[1][i] = d;
				cripto[2][i] = Character.toLowerCase(c);
				cripto[3][i] = Character.toLowerCase(d);
			}
			
			for (int i = 0; i < N; i++) {
				String msg = "";
				for (char c : mensagens[i].toCharArray()) {
					for (int j = 0; j < C; j++) {
						if (c == cripto[0][j]) {
							msg+= a(c) ? Character.toLowerCase(cripto[1][j]) : cripto[1][j];
							break;
						} else if (c == cripto[1][j]) {
							msg+= a(c) ? Character.toLowerCase(cripto[0][j]) : cripto[0][j];
							break;
						}  else if (c == cripto[2][j]) {
							msg+= a(c) ? Character.toLowerCase(cripto[3][j]) : cripto[3][j];
							break;
						}  else if (c == cripto[3][j]) {
							msg+= a(c) ? Character.toLowerCase(cripto[2][j]) : cripto[2][j];
							break;
						} else if (j+1 == C) {
							msg += c;
						}
					}
				}
				System.out.println(msg);
			}
			System.out.print("\n");
		}
	}
	
	private static String readLine(Scanner leitor) {
		String line = leitor.nextLine();
		while (line.equals("")) {
			line = leitor.nextLine();
		}
		return line;
	}
	
	private static boolean a(char c) {
		return c == '0' || c == '1' || c == '2' || c == '3' || c == '4' || c == ' '
				|| c == '5' || c == '6' || c == '7' || c == '8' || c == '9'
				|| c == '!' || c == '@' || c == '#' || c == '$' || c == '%'
				|| c == '|' || c == '&' || c == '*' || c == '(' || c == ')'
				|| c == '.' || c == ',' || c == ';' || c == ':' || c == '?';
	}
	
}