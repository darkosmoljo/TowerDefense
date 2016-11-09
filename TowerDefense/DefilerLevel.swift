//
//  DefilerLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 08/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class DefilerLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [DefilerEnemy(index: 0), DefilerEnemy(index: 1), DefilerEnemy(index: 2), DefilerEnemy(index: 3), DefilerEnemy(index: 4)]
    }
    
    func getId() -> String{
        return "DefilerLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
}
