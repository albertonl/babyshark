class Babyshark {
    static String[] verses = {
        "Baby shark",
        "Mommy shark",
        "Daddy shark",
        "Grandma shark",
        "Grandpa shark",
        "Let's go hunt",
        "Run away",
        "Safe at last",
        "It's the end"
    };
    static String doodoo = ", doo doo doo doo doo doo";
    
    public static void main(String[] args) {
        for (String verse : verses) {
            System.out.println(verse + doodoo);
            System.out.println(verse + doodoo);
            System.out.println(verse + doodoo);
            System.out.println(verse + "!");
        }
    }
}
