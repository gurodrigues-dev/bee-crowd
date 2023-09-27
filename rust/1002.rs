use std::io;

fn main() {
    let mut input = String::new();

    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");

    let radius: f64 = input.trim().parse().ok().expect("Failed to parse");
    let pi: f64 = 3.14159;

    let area = pi * radius.powf(2.00);

    println!("A={:.4}", area);
}