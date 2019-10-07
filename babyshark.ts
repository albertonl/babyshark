const subjects = [
    "Baby shark",
    "Mommy shark",
    "Daddy shark",
    "Grandma shark",
    "Grandpa shark",
    "Let's go hunt",
    "Run away",
    "Safe at last",
    "It's the end"
];

const doo = "doo ".repeat(6).trim();

for (const subject of subjects) {
    const sentence = `${subject}, ${doo}`;

    console.log(sentence);
    console.log(sentence);
    console.log(sentence);
    console.log(`${subject}!`);
    console.log();
}
