use std::io;

fn main() {
    let mut input1 = String::new();
    let mut input2 = String::new();

    io::stdin()
        .read_line(&mut input1)
        .expect("Failed to read line");
    io::stdin()
        .read_line(&mut input2)
        .expect("Failed to read line");

    let a: i32 = input1.trim().parse().ok().expect("Failed to parse");
    let b: i32 = input2.trim().parse().ok().expect("Failed to parse");

    let x = a + b;

    println!("X = {}", x);
}