use rand::Rng;

fn main() {
    let mut rng = rand::thread_rng();
    println!("Here is a random number: {}", rng.gen::<i32>());
}

#[test]
fn foo_test() {
    assert_eq!(1,1);
}
