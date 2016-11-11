//
//  ZealotsLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 22/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class ZealotsLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [ZealotEnemy(index: 0), ZealotEnemy(index: 1), ZealotEnemy(index: 2), ZealotEnemy(index: 3), ZealotEnemy(index: 4),
                ZealotEnemy(index: 5), ZealotEnemy(index: 6), ZealotEnemy(index: 7), ZealotEnemy(index: 8), ZealotEnemy(index: 9)]
    }
    
    func getId() -> String{
        return "ZealotsLevel"
    }
    
    func getDelay() -> Double {
        return 0.4
    }
}
