//
//  UltraliskLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 07/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class UltraliskLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [UltraliskEnemy(index: 0), UltraliskEnemy(index: 1), UltraliskEnemy(index: 2), UltraliskEnemy(index: 3), UltraliskEnemy(index: 4),
                UltraliskEnemy(index: 5), UltraliskEnemy(index: 6), UltraliskEnemy(index: 7), UltraliskEnemy(index: 8), UltraliskEnemy(index: 9),
                UltraliskEnemy(index: 10), UltraliskEnemy(index: 11), UltraliskEnemy(index: 12), UltraliskEnemy(index: 13), UltraliskEnemy(index: 14)]
    }
    
    func getId() -> String{
        return "UltraliskLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
