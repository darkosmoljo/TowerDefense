//
//  KerriganLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 08/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class KerriganLevel: Level {
    
    func getEnemies() -> [Enemy] {
        return [KerriganEnemy(index: 0), KerriganEnemy(index: 1), KerriganEnemy(index: 2), KerriganEnemy(index: 3), KerriganEnemy(index: 4)]
    }
    
    func getId() -> String{
        return "KerriganLevel"
    }
    
    func getDelay() -> Double {
        return 0.5
    }
    
}
