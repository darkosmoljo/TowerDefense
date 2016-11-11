//
//  LurkerLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 08/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class LurkerLevel: Level {
    
    func getEnemies() -> [Enemy] {
        return [LurkerEnemy(index: 0), LurkerEnemy(index: 1), LurkerEnemy(index: 2), LurkerEnemy(index: 3), LurkerEnemy(index: 4),
                LurkerEnemy(index: 5), LurkerEnemy(index: 6), LurkerEnemy(index: 7), LurkerEnemy(index: 8), LurkerEnemy(index: 9),
                LurkerEnemy(index: 10), LurkerEnemy(index: 11), LurkerEnemy(index: 12), LurkerEnemy(index: 13), LurkerEnemy(index: 14),
                LurkerEnemy(index: 15), LurkerEnemy(index: 16), LurkerEnemy(index: 17), LurkerEnemy(index: 18), LurkerEnemy(index: 19)]
    }
    
    func getId() -> String{
        return "LurkerLevel"
    }
    
    func getDelay() -> Double {
        return 0.3
    }
    
}
