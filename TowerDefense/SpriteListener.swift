//
//  SpriteListener.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 16/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

protocol SpriteListener {
    
    func toggleTowerList(toggle: Bool)
    
    func addValue(value: Int)
    
    func playingLevel(levelOutOfLevels: (Int, Int))
    
    func playingMap(mapStr: String)
    
    func healthStatus(currentHealth: Int)
    
    func declareWinner()
    
}