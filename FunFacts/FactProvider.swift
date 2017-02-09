//
//  FactProvider.swift
//  FunFacts
//
//  Created by German Om on 2/7/17.
//  Copyright © 2017 German Om. All rights reserved.
//

import GameKit

struct FactProvider {
    let facts = [
                "It is impossible to lick your elbow (busted)",
                "A crocodile can't stick it's tongue out.",
                "A shrimp's heart is in it's head.",
                "People say 'Bless you' when you sneeze because when you sneeze,your heart stops for a mili-second.",
                "In a study of 200,000 ostriches over a period of 80 years, no one reported a single case where an ostrich buried its head in the sand.",
                "It is physically impossible for pigs to look up into the sky.",
                "A pregnant goldfish is called a twit. (busted?)",
                "More than 50% of the people in the world have never made or received a telephone call.",
                "Rats and horses can't vomit.",
                "If you sneeze too hard, you can fracture a rib.",
                "If you try to suppress a sneeze, you can rupture a blood vessel in your head or neck and die."
                ]
    
    func randomFact(currentFact current: String) -> String {
        var foundNextFact = false
        var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        while (foundNextFact == false) {
            randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
            if (current != facts[randomNumber]) {
                foundNextFact = true
            }
        }
        return facts[randomNumber]
    }
}
