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
        return [DefilerEnemy(index: 0), DefilerEnemy(index: 1), DefilerEnemy(index: 2), DefilerEnemy(index: 3), DefilerEnemy(index: 4),
                DefilerEnemy(index: 5), DefilerEnemy(index: 6), DefilerEnemy(index: 7), DefilerEnemy(index: 8), DefilerEnemy(index: 9),
                DefilerEnemy(index: 10), DefilerEnemy(index: 11), DefilerEnemy(index: 12), DefilerEnemy(index: 13), DefilerEnemy(index: 14)]
    }
    
    func getId() -> String{
        return "DefilerLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
}
