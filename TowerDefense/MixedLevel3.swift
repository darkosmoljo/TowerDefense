//
//  MixedLevel3.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 10/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class MixedLevel3: Level {
    
    func getEnemies() -> [Enemy] {
        return [InfestorEnemy(index: 0), LurkerEnemy(index: 1), GuardianEnemy(index: 2), ZealotEnemy(index: 3), LurkerEnemy(index: 4),
                ZealotEnemy(index: 5), InfestorEnemy(index: 6), LurkerEnemy(index: 7), GuardianEnemy(index: 8), InfestorEnemy(index: 9),
                HydraEnemy(index: 10), ZealotEnemy(index: 11), InfestorEnemy(index: 12), LurkerEnemy(index: 13), GuardianEnemy(index: 14),
                GuardianEnemy(index: 15), HydraEnemy(index: 16), GuardianEnemy(index: 17), InfestorEnemy(index: 18), LurkerEnemy(index: 19)]
    }
    
    func getId() -> String{
        return "MixedLevel3"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
