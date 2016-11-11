//
//  ScourgeLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 06/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class ScourgeLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [ScourgeEnemy(index: 0), ScourgeEnemy(index: 1), ScourgeEnemy(index: 2), ScourgeEnemy(index: 3), ScourgeEnemy(index: 4),
                ScourgeEnemy(index: 5), ScourgeEnemy(index: 6), ScourgeEnemy(index: 7), ScourgeEnemy(index: 8), ScourgeEnemy(index: 9),
                ScourgeEnemy(index: 10), ScourgeEnemy(index: 11), ScourgeEnemy(index: 12), ScourgeEnemy(index: 13)]
    }
    
    func getId() -> String{
        return "ScourgeEnemy"
    }
    
    func getDelay() -> Double {
        return 0.4
    }
    
}
