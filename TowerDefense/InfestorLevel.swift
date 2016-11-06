//
//  InfestorLevel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 06/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class InfestorLevel : Level {
    
    func getEnemies() -> [Enemy] {
        return [InfestorEnemy(index: 0), InfestorEnemy(index: 1), InfestorEnemy(index: 2), InfestorEnemy(index: 3), InfestorEnemy(index: 4)]
    }
    
    func getId() -> String{
        return "InfestorLevel"
    }
    
    func getDelay() -> Double {
        return 0.4
    }
}
