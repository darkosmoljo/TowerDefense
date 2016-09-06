//
//  Bullet.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 25/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

protocol Bullet {
    
    func animate()
    
    func getTarget() -> Enemy?
    func getDamage() -> Int
    
    func getNode() -> SKSpriteNode
    func explode()
    
    func getSpeed() -> Float
    
    func recalibrate() -> Bool
    
    func setTarget(target: Enemy?)
    func setTower(tower: Tower?)
    
    func fire()
}