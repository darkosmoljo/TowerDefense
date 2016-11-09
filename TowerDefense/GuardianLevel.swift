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
        return [GuardianEnemy(index: 0), GuardianEnemy(index: 1), GuardianEnemy(index: 2), GuardianEnemy(index: 3), GuardianEnemy(index: 4)]
    }
    
    func getId() -> String{
        return "GuardianLevel"
    }
    
    func getDelay() -> Double {
        return 0.8
    }
    
}
