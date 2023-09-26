use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let nums: Vec<i32> = input
        .split_whitespace()
        .map(|s| s.parse().expect("Parse error"))
        .collect();

    let h1 = nums[0];
    let m1 = nums[1];
    let h2 = nums[2];
    let m2 = nums[3];

    let mut hours = h2 - h1;
    if hours < 0 {
        hours = 24 - hours.abs();
    }

    let mut mins = m2 - m1;
    if mins < 0 {
        hours -= 1;
        mins = 60 - mins.abs();
    }

    if hours < 0 {
        hours = 24 + hours;
    }

    if hours == 0 && mins == 0 {
        hours = 24;
    }

    println!("O JOGO DUROU {} HORA(S) E {} MINUTO(S)", hours, mins);
}