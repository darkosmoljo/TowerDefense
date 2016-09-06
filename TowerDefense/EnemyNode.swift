//
//  EnemyNode.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 25/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class EnemyNode : SKSpriteNode, Enemy {
    
    var id: String!
    var health: Int = 100
    
    func startPath(checkpoints: [(CGFloat, CGFloat)]) {
        
    }
    
    func getSpeed() -> Int {
        return 100
    }
    
    func getValue() -> Int {
        return 5
    }
    
    func getNode() -> SKSpriteNode {
        return self
    }
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        let thirdSize = CGSize(width: frame.size.width / 3, height: frame.size.height / 3)
        
        physicsBody = SKPhysicsBody(rectangleOfSize: thirdSize)
        physicsBody?.affectedByGravity = false
        physicsBody?.categoryBitMask = CollisionBitMasks.enemy
        physicsBody?.collisionBitMask = 0
        physicsBody?.contactTestBitMask = CollisionBitMasks.bullet | CollisionBitMasks.commandCenter
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getId() -> String {
        return id
    }
    
    func explode() {
        health = 0
        
        removeFromParent()
    }
    
    func takeDamage(damage: Int) {
        health = health - damage
    }
    
    func getHealth() -> Int {
        return health
    }
}