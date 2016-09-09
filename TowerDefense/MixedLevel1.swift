//
//  MixedLevel1.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 06/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class MixedLevel1: Level {
    
    func getEnemies() -> [Enemy] {
        return [HydraEnemy(index: 0), ZealotEnemy(index: 1), HydraEnemy(index: 2), ZealotEnemy(index: 3), HydraEnemy(index: 4), ZealotEnemy(index: 5), HydraEnemy(index: 6), ZealotEnemy(index: 7), HydraEnemy(index: 8), ZealotEnemy(index: 9),
                HydraEnemy(index: 10), ZealotEnemy(index: 11), HydraEnemy(index: 12), ZealotEnemy(index: 13), HydraEnemy(index: 14), ZealotEnemy(index: 15), HydraEnemy(index: 16), ZealotEnemy(index: 17), HydraEnemy(index: 18), ZealotEnemy(index: 19)]
    }
    
    func getId() -> String{
        return "HydrasLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
