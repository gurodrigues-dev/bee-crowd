import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.text.DecimalFormat;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        OutputStream out = new BufferedOutputStream(System.out);
        DecimalFormat df = new DecimalFormat("0.00");
        int t = Integer.parseInt(br.readLine());
        while (t-- > 0) {
            String[] st = br.readLine().split(" ");
            int d = Integer.parseInt(st[0]);
            int n = Integer.parseInt(st[1]);
            st = br.readLine().split(" ");
            double max = 0.00;
            int i = 0;
            while (i < n) {
                double unit = Double.parseDouble(st[i]);
                if (unit < d) {
                    double now = d % unit;
                    if (max < now) {
                        max = now;
                    }
                }
                i++;
            }
            out.write((df.format(max) + "\n").getBytes());
        }
        out.flush();
    }

}
