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
        return [UltraliskEnemy(index: 0), UltraliskEnemy(index: 1), UltraliskEnemy(index: 2), UltraliskEnemy(index: 3), UltraliskEnemy(index: 4)]
    }
    
    func getId() -> String{
        return "UltraliskLevel"
    }
    
    func getDelay() -> Double {
        return 0.4
    }
    
}
