import java.io.IOException;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.LinkedList;
import java.util.TreeSet;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        OutputStream out = new BufferedOutputStream(System.out);
        String input;
        while (!(input = br.readLine()).equals("0 0")) {
            String[] st = input.split(" ");
            int a = Integer.parseInt(st[0]);
            int b = Integer.parseInt(st[1]);
            TreeSet<Integer> aliceSet = new TreeSet();
            TreeSet<Integer> bettySet = new TreeSet();
            st = br.readLine().split(" ");
            for (int i = 0; i < a; i++) {
                aliceSet.add(Integer.parseInt(st[i]));
            }
            st = br.readLine().split(" ");
            for (int i = 0; i < b; i++) {
                bettySet.add(Integer.parseInt(st[i]));
            }
            LinkedList<Integer> exchangeCardAlice = new LinkedList<Integer>();
            LinkedList<Integer> exchangeCardBetty = new LinkedList<Integer>();
            //add card non replace
            for (Integer aliceCard : aliceSet) {
                if (!bettySet.contains(aliceCard)) {
                    exchangeCardAlice.add(aliceCard);
                }
            }
            for (Integer bettyCard : bettySet) {
                if (!aliceSet.contains(bettyCard)) {
                    exchangeCardBetty.add(bettyCard);
                }
            }
            int exchanged = Math.min(exchangeCardBetty.size(), exchangeCardAlice.size());
            out.write((exchanged + "\n").getBytes());
        }
        out.flush();
    }

}
