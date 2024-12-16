fn main() {
    let family = vec!["Baby shark", "Mommy shark", "Daddy shark", "Grandma shark",
                        "Grandpa shark", "Let's go hunt", "Run away", "Safe at last",
                        "It's the end"];

    for i in 0..9 {
        for j in 0..3 {
            println!("{}, doo doo doo doo doo doo", family[i]);
        }
        println!("{}!", family[i]);
    }
}
