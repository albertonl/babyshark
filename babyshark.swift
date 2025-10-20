import Foundation

let family = ["Baby shark", 
            "Mommy shark", 
            "Daddy shark", 
            "Grandma shark", 
            "Grandpa shark", 
            "Let's go hunt", 
            "Run away", 
            "Safe at last", 
            "It's the end"]

func createSong(_ family: [String]) -> String {
    if family.isEmpty {
        return ""
    } else {
        let fst = family[0]
        let rst = Array(family.dropFirst())
        var lyric = ""
        for i in 0..<4 {
            if i != 3 {
                lyric += fst + ", doo doo doo doo doo doo\n"
            } else {
                lyric += fst + "!\n"
            }
        }
        return lyric + createSong(rst)
    }
}

print(createSong(family))