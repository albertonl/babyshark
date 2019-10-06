family = ["Baby", "Mommy", "Daddy", "Grandma", "Grandpa", "Let's go hunt", "Run away", "Safe at last", "It's the end"]
 # The last four aren't actually part of a "family". Should probably think of a better name this is so I don't have to put em in another list

for i in range(len(family)):
	sentence = [print(f'{family[i]} Shark doo doo doo doo doo doo') if i < 5 else print(f'{family[i]} doo doo doo doo doo doo') for j in range(3)]
	print(f'{family[i]}!')


