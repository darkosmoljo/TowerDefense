//
//  Board.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 14/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

protocol Board : SKPhysicsContactDelegate {
    
    func setupMap(map: Map)
    func updateFrame()
    func getMap() -> Map
    func putTower(tower: Tower)
    func putEnemy(enemy: Enemy)
    func putBullet(bullet: Bullet, from tower: Tower)
    
    func getNode() -> SKSpriteNode
    func removeDependencies()
}