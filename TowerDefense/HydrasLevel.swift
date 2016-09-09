//
//  HydrasLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 06/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class HydrasLevel: Level {
    
    func getEnemies() -> [Enemy] {
        return [HydraEnemy(index: 0), HydraEnemy(index: 1), HydraEnemy(index: 2), HydraEnemy(index: 3), HydraEnemy(index: 4), HydraEnemy(index: 5), HydraEnemy(index: 6), HydraEnemy(index: 7), HydraEnemy(index: 8), HydraEnemy(index: 9)]
    }
    
    func getId() -> String{
        return "HydrasLevel"
    }

    func getDelay() -> Double {
        return 0.55
    }
}