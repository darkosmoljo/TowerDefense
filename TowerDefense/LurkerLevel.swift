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
        return [LurkerEnemy(index: 0), LurkerEnemy(index: 1), LurkerEnemy(index: 2), LurkerEnemy(index: 3), LurkerEnemy(index: 4)]
    }
    
    func getId() -> String{
        return "LurkerLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
