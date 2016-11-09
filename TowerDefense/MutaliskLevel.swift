//
//  MutaliskLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 08/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class MutaliskLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [MutaliskEnemy(index: 0), MutaliskEnemy(index: 1), MutaliskEnemy(index: 2), MutaliskEnemy(index: 3), MutaliskEnemy(index: 4)]
    }
    
    func getId() -> String{
        return "MutaliskLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
