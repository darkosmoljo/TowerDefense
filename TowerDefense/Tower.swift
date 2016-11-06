//
//  Tower.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 16/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

protocol Tower {
    
    func getIconString() -> String
    func getNode() -> SKSpriteNode
    func createTower() -> Tower
    
    func getRange() -> Range?
    func toggleRangeVisibility()
    
    func didEnterRegion(enemy: Enemy)
    func didExitRegion(enemy: Enemy)
    
    func recalibrate() -> Bullet?
    func fireOrRecalibrate() -> Bullet?
    
    func getBullet() -> Bullet?
    func setBullet(bullet: Bullet?)
    
    func getPrice() -> Int
}
