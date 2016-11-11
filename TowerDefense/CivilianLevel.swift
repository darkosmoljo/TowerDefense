//
//  CivilianLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 06/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class CivilianLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [CivilianEnemy(index: 0), CivilianEnemy(index: 1), CivilianEnemy(index: 2), CivilianEnemy(index: 3), CivilianEnemy(index: 4),
                CivilianEnemy(index: 5), CivilianEnemy(index: 6), CivilianEnemy(index: 7), CivilianEnemy(index: 8), CivilianEnemy(index: 9)]
    }
    
    func getId() -> String{
        return "CivilianLevel"
    }
    
    func getDelay() -> Double {
        return 0.3
    }
}
