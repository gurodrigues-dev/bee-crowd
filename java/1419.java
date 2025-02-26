import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.StringTokenizer;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        OutputStream out = new BufferedOutputStream(System.out);
        int n;
        while ((n = Integer.parseInt(br.readLine())) != 0) {
            int markPoint = 0, letiPoint = 0;
            int markCount = 1, letiCount = 1;
            StringTokenizer stk1 = new StringTokenizer(br.readLine());
            StringTokenizer stk2 = new StringTokenizer(br.readLine());
            int markMonster_before = 0, letiMonster_before = 0;
            boolean isExtraPoint = false;
            for (int i = 0; i < n; i++) {
                int markMonster_now = Integer.parseInt(stk1.nextToken());
                int letiMonster_now = Integer.parseInt(stk2.nextToken());
                markPoint += markMonster_now;
                letiPoint += letiMonster_now;

                if (!isExtraPoint) {
                    if (i > 0) {
                        if (markMonster_now == markMonster_before) {
                            markCount++;
                        } else {
                            markCount = 1;
                        }

                        if (letiMonster_now == letiMonster_before) {
                            letiCount++;
                        } else {
                            letiCount = 1;
                        }

                        if (markCount == 3 && letiCount == 3) {
                            isExtraPoint = true;
                        } else if (markCount == 3 && letiCount != 3) {
                            markPoint += 30;
                            isExtraPoint = true;
                        } else if (letiCount == 3 && markCount != 3) {
                            letiPoint += 30;
                            isExtraPoint = true;
                        }
                    }
                    markMonster_before = markMonster_now;
                    letiMonster_before = letiMonster_now;
                }

            }

            if (markPoint > letiPoint) {
                out.write("M\n".getBytes());
            } else if (letiPoint > markPoint) {
                out.write("L\n".getBytes());
            } else {
                out.write("T\n".getBytes());
            }
        }
        out.flush();
    }

}
