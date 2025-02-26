import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Arrays;

public class Main {

    static int N, M;
    static int[] mice;
    static String[] in;

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        OutputStreamWriter ow = new OutputStreamWriter(System.out);
        BufferedWriter bw = new BufferedWriter(ow);
        String input;
        while ((input = br.readLine()) != null) {
            in = input.split(" ");
            N = Integer.parseInt(in[0]);
            M = Integer.parseInt(in[1]);
            mice = new int[N];
            in = br.readLine().split(" ");
            for (int i = 0; i < N; i++) {
                mice[i] = Integer.parseInt(in[i]);
            }
            int satiated = 0;
            in = br.readLine().split(" ");
            for (int i = 0; i < M && satiated < N; i++) {
                int food = Integer.parseInt(in[i]);
                Arrays.sort(mice);
                int j = satiated;
                boolean found = false;
                int index = 0;
                for (; j < N; j++) {
                    if (food >= mice[j]) {
                        found = true;
                        index = j;
                    }
                }

                if (!found) {
                    index = N - 1;
                }
                int e = mice[index] - food;
                mice[index] = e;
                if (e <= 0) {
                    satiated++;
                }

            }

            bw.append(satiated + "\n");
        }
        bw.flush();
    }

}
