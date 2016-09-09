//
//  Level.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import Foundation

protocol Level {
    
    func getEnemies() -> [Enemy]
    func getId() -> String
    func getDelay() -> Double
    
}