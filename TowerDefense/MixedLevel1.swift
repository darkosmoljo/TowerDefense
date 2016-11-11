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
        return [ScourgeEnemy(index: 0), CivilianEnemy(index: 1), ZerglingEnemy(index: 2), ZerglingEnemy(index: 3), CivilianEnemy(index: 4),
                ScourgeEnemy(index: 5), ZerglingEnemy(index: 6), CivilianEnemy(index: 7), ScourgeEnemy(index: 8), CivilianEnemy(index: 9),
                CivilianEnemy(index: 10), ZerglingEnemy(index: 11), ZerglingEnemy(index: 12), CivilianEnemy(index: 13), ScourgeEnemy(index: 14)]
    }
    
    func getId() -> String{
        return "HydrasLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
