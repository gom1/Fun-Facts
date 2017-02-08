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
                "Fact 1",
                "Fact 2",
                "Fact 3",
                "Fact 4",
                "Fact 5"
                ]
    
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[randomNumber]
    }
}
