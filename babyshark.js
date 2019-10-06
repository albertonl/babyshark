const family = ["Baby Shark", "Mommy Shark", "Daddy Shark", "Grandma Shark", "Grandpa Shark", "Let's go hunt", "Run away", "Safe at last", "It's the end"]
// The last four aren't actually part of a "family". Should probably think of a better name this is so I don't have to put em in another list
const sentences = family.map(x => `${x} doo doo doo doo doo doo`)
for(let i=0; i < sentences.length; i++){
	for(let j=0; j < 4; j++){
		console.log(`${sentences[i]}`)
		if(j == 3){
			console.log(`${family[i]}!`)
			break;
		}
	}
}

