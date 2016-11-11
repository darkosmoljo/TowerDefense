//
//  GuardianLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 08/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class GuardianLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [GuardianEnemy(index: 0), GuardianEnemy(index: 1), GuardianEnemy(index: 2), GuardianEnemy(index: 3), GuardianEnemy(index: 4),
                GuardianEnemy(index: 5), GuardianEnemy(index: 6), GuardianEnemy(index: 7), GuardianEnemy(index: 8), GuardianEnemy(index: 9),
                GuardianEnemy(index: 10), GuardianEnemy(index: 11), GuardianEnemy(index: 12), GuardianEnemy(index: 13), GuardianEnemy(index: 14),
                GuardianEnemy(index: 15), GuardianEnemy(index: 16), GuardianEnemy(index: 17), GuardianEnemy(index: 18), GuardianEnemy(index: 19)]
    }
    
    func getId() -> String{
        return "GuardianLevel"
    }
    
    func getDelay() -> Double {
        return 0.8
    }
    
}
