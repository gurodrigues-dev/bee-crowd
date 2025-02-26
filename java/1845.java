import java.io.IOException;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Main {

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        OutputStreamWriter or = new OutputStreamWriter(System.out);
        BufferedReader br = new BufferedReader(ir);
        BufferedWriter bw = new BufferedWriter(or);
        String line = "";
        while ((line = br.readLine()) != null) {
            char[] c = line.toCharArray();
            boolean hide = false;
            for (char s : c) {
                switch (s) {
                    case 'f':
                    case 'b':
                    case 's':
                    case 'p':
                    case 'x':
                    case 'z':
                    case 'v':
                    case 'j':
                        if (!hide) {
                            bw.append('f');
                            hide = true;
                        }
                        break;
                    case 'F':
                    case 'B':
                    case 'S':
                    case 'P':
                    case 'X':
                    case 'Z':
                    case 'V':
                    case 'J':
                        if (!hide) {
                            bw.append('F');
                            hide = true;
                        }
                        break;
                    default:
                        bw.append(s);
                        hide = false;
                        break;
                }
            }
            bw.newLine();
        }
        bw.flush();
    }

}
