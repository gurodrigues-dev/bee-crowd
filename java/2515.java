import java.io.IOException;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Main {

    static int Marcos, Leonardo;

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader br = new BufferedReader(ir);
        OutputStreamWriter ow = new OutputStreamWriter(System.out);
        BufferedWriter bw = new BufferedWriter(ow);
        String input;
        while ((input = br.readLine()) != null) {
            int n = Integer.parseInt(input);
            String[] st = br.readLine().split(" ");
            int lCracker = 0, rCracker = 0;
            int lCursor = 0;
            int rCursor = n - 1;
            while (lCursor <= rCursor) {
                if (lCracker <= rCracker) {
                    lCracker += Integer.parseInt(st[lCursor]);
                    lCursor++;
                } else {
                    rCracker += Integer.parseInt(st[rCursor]);
                    rCursor--;
                }
            }
            if (lCracker < rCracker) {
                Marcos = lCracker;
                Leonardo = rCracker;
            } else {
                Marcos = rCracker;
                Leonardo = lCracker;
            }

            bw.append(Marcos + " " + Leonardo + "\n");
        }
        bw.flush();
    }

}
