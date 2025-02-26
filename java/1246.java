import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.StringTokenizer;

public class Main {

    static HashMap<Integer, ParkSlot> parked;
    static ParkSlot firstSlot;

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        OutputStream out = new BufferedOutputStream(System.out);
        String input;
        while ((input = br.readLine()) != null) {
            String[] st = input.split(" ");
            int c = Integer.parseInt(st[0]);//Max Space
            int n = Integer.parseInt(st[1]);//case
            firstSlot = new ParkSlot();
            firstSlot.size = c;
            parked = new HashMap();
            int billing = 0;
            for (int i = 0; i < n; i++) {
                StringTokenizer stk = new StringTokenizer(br.readLine());
                int vehiclePlate, length;
                String s = stk.nextToken();
                if (s.equals("C")) {
                    vehiclePlate = Integer.parseInt(stk.nextToken());
                    length = Integer.parseInt(stk.nextToken());
                    if (useSlot(vehiclePlate, length)) {
                        billing += 10;
                    } else {
                    }

                } else if (s.equals("S")) {
                    vehiclePlate = Integer.parseInt(stk.nextToken());
                    ParkSlot cur = parked.remove(vehiclePlate);
                    if (cur != null) {
                        exitSlot(cur);
                    }

                }

            }
            out.write((billing + "\n").getBytes());
        }
        out.flush();

    }

    static class ParkSlot {

        int size, carID;
        boolean used = false;
        ParkSlot next = null;
        ParkSlot pre = null;
    }

    static boolean useSlot(int carID, int size) {
        ParkSlot cur = findSlot(size);
        if (cur != null) {
            int tsize = cur.size - size;
            if (tsize > 0) {
                ParkSlot newSlot = new ParkSlot();
                newSlot.size = tsize;
                if (cur.next != null) {
                    newSlot.next = cur.next;
                    cur.next.pre = newSlot;
                }
                cur.next = newSlot;
                newSlot.pre = cur;
            }
            cur.size = size;
            cur.used = true;
            parked.put(carID, cur);
            return true;
        }
        return false;
    }

    static ParkSlot findSlot(int size) {
        ParkSlot result = null;
        ParkSlot cur = firstSlot;
        while (cur != null) {
            if (!cur.used && cur.size >= size) {
                result = cur;
                break;
            }
            cur = cur.next;
        }
        return result;
    }

    static void exitSlot(ParkSlot exitSlot) {
        exitSlot.used = false;
        mergeSlot(exitSlot);
    }

    static void mergeSlot(ParkSlot exitSlot) {
        ParkSlot cur = exitSlot;
        //Merge Prev Slot
        if (cur.pre != null && !cur.pre.used) {
            cur.pre.size += cur.size;
            if (cur.next != null) {
                cur.pre.next = cur.next;
                cur.next.pre = cur.pre;
            } else {
                cur.pre.next = null;
            }
            cur = cur.pre;
        }
        //Merge Next Slot
        if (cur.next != null && !cur.next.used) {
            cur.size += cur.next.size;
            if (cur.next.next != null) {
                cur.next.next.pre = cur;
                cur.next = cur.next.next;
            } else {
                cur.next = null;
            }
        }
    }

}
