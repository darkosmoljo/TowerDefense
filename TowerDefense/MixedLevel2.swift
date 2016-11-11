//
//  MixedLevel2.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 10/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class MixedLevel2: Level {
    
    func getEnemies() -> [Enemy] {
        return [ZealotEnemy(index: 0), MutaliskEnemy(index: 1), HydraEnemy(index: 2), ZealotEnemy(index: 3), MutaliskEnemy(index: 4),
                ZerglingEnemy(index: 5), HydraEnemy(index: 6), ZealotEnemy(index: 7), HydraEnemy(index: 8), MutaliskEnemy(index: 9),
                HydraEnemy(index: 10), ScourgeEnemy(index: 11), HydraEnemy(index: 12), CivilianEnemy(index: 13), HydraEnemy(index: 14),
                MutaliskEnemy(index: 15), HydraEnemy(index: 16), ZealotEnemy(index: 17), HydraEnemy(index: 18), ZerglingEnemy(index: 19)]
    }
    
    func getId() -> String{
        return "HydrasLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
