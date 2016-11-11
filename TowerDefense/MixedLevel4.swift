//
//  MixedLevel4.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 11/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class MixedLevel4: Level {
    
    func getEnemies() -> [Enemy] {
        return [GuardianEnemy(index: 0), LurkerEnemy(index: 1), KerriganEnemy(index: 2), KerriganEnemy(index: 3), UltraliskEnemy(index: 4),
                UltraliskEnemy(index: 5), GuardianEnemy(index: 6), LurkerEnemy(index: 7), GuardianEnemy(index: 8), KerriganEnemy(index: 9),
                KerriganEnemy(index: 10), UltraliskEnemy(index: 11), GuardianEnemy(index: 12), LurkerEnemy(index: 13), GuardianEnemy(index: 14),
                GuardianEnemy(index: 15), HydraEnemy(index: 16), GuardianEnemy(index: 17), GuardianEnemy(index: 18), UltraliskEnemy(index: 19)]
    }
    
    func getId() -> String{
        return "MixedLevel3"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
