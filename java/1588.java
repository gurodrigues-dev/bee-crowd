import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;

public class Main {

    static class Team {

        int id = 0;
        String name = "";
        int score = 0;
        int win = 0;
        int goal = 0;
        int rank = 0;

        void win() {
            win += 1;
            score += 3;
        }

        void draw() {
            score += 1;
        }

        void addGoalPoint(int goal) {
            this.goal += goal;
        }
    }

    static int teamAmount = 0;
    static Team[] team;

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        OutputStream out = new BufferedOutputStream(System.out);
        int t = Integer.parseInt(br.readLine());
        for (int i = 0; i < t; i++) {
            String[] st = br.readLine().split(" ");
            teamAmount = Integer.parseInt(st[0]);
            int matches = Integer.parseInt(st[1]);
            team = new Team[teamAmount];
            for (int j = 0; j < teamAmount; j++) {
                team[j] = new Team();
                team[j].id = j + 1;
                team[j].name = br.readLine();
                team[j].rank = j + 1;
            }

            for (int j = 0; j < matches; j++) {
                st = br.readLine().split(" ");
                int goalTeam1 = Integer.parseInt(st[0]);
                String teamName1 = st[1];
                int goalTeam2 = Integer.parseInt(st[2]);
                String teamName2 = st[3];
                int team1Index = 0, team2Index = 0;
                for (int k = 0; k < teamAmount; k++) {
                    if (team[k].name.equals(teamName1)) {
                        team1Index = k;
                        break;
                    }
                }
                for (int k = 0; k < teamAmount; k++) {
                    if (team[k].name.equals(teamName2)) {
                        team2Index = k;
                        break;
                    }
                }
                if (goalTeam1 > goalTeam2) {
                    team[team1Index].win();
                } else if (goalTeam2 > goalTeam1) {
                    team[team2Index].win();
                } else {
                    team[team1Index].draw();
                    team[team2Index].draw();
                }
                team[team1Index].addGoalPoint(goalTeam1);
                team[team2Index].addGoalPoint(goalTeam2);
            }
            ranking();
            for (int j = 0; j < teamAmount; j++) {
                out.write((team[j].name + "\n").getBytes());
            }
            out.flush();
        }
    }

    static void ranking() {
        while (true) {
            boolean foundSwap = false;
            for (int i = 1; i < teamAmount; i++) {
                if (check(team[i], team[i - 1])) {
                    Team temp2 = team[i - 1];
                    team[i - 1] = team[i];
                    team[i] = temp2;
                    foundSwap = true;
                }
            }
            if (!foundSwap) {
                break;
            }
        }

    }

    static boolean check(Team team1, Team team2) {
        if (team1.score > team2.score) {
            return true;
        } else if (team1.score == team2.score) {
            if (team1.win > team2.win) {
                return true;
            } else if (team1.win == team2.win) {
                if (team1.goal > team2.goal) {
                    return true;
                } else if (team1.goal == team2.goal) {
                    if (team1.id < team2.id) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
