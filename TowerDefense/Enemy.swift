//
//  Enemy.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

protocol Enemy {
    
    func setCheckpoints(checkpoints: [CGPoint])
    func startPath()
    func getSpeed() -> Int
    func getNode() -> SKSpriteNode?
    
    func explode()
    func takeDamage(damage: Int)
    func damage() -> Int
    func getHealth() -> Int
    func getValue() -> Int
    
    func getId() -> String
}