import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        int t = Integer.parseInt(br.readLine());
        while (t-- > 0) {
            int[][] box = new int[4][4];
            boolean win = false;
            for (int i = 0; i < 4; i++) {
                String[] st = br.readLine().split(" ");
                for (int j = 0; j < 4; j++) {
                    box[i][j] = Integer.parseInt(st[j]);
                    if (box[i][j] == 2048) {
                        win = true;
                    }
                }
            }
            if (win) {
                bw.append("NONE\n");
                continue;
            }

            boolean hasPrinted = false;
            //Down checking
            loop:
            for (int i = 0; i < 4; i++) {
                for (int j = 2; j >= 0; j--) {
                    if (box[j][i] != 0 && (box[j + 1][i] == 0 || box[j][i] == box[j + 1][i])) {
                        bw.append("DOWN");
                        hasPrinted = true;
                        break loop;
                    }
                }
            }

            //Left checking
            loop:
            for (int i = 0; i < 4; i++) {
                for (int j = 1; j < 4; j++) {
                    if (box[i][j] != 0 && (box[i][j - 1] == 0 || box[i][j] == box[i][j - 1])) {
                        if (hasPrinted) {
                            bw.append(" ");
                        }
                        bw.append("LEFT");
                        hasPrinted = true;
                        break loop;
                    }
                }
            }

            //Right checking
            loop:
            for (int i = 0; i < 4; i++) {
                for (int j = 2; j >= 0; j--) {
                    if (box[i][j] != 0 && (box[i][j + 1] == 0 || box[i][j] == box[i][j + 1])) {
                        if (hasPrinted) {
                            bw.append(" ");
                        }
                        bw.append("RIGHT");
                        hasPrinted = true;
                        break loop;
                    }
                }
            }

            //Up checking
            loop:
            for (int i = 0; i < 4; i++) {
                for (int j = 1; j < 4; j++) {
                    if (box[j][i] != 0 && (box[j - 1][i] == 0 || box[j][i] == box[j - 1][i])) {
                        if (hasPrinted) {
                            bw.append(" ");
                        }
                        bw.append("UP");
                        hasPrinted = true;
                        break loop;
                    }
                }
            }

            bw.append(hasPrinted ? "\n" : "NONE\n");
        }
        bw.flush();
    }

}
