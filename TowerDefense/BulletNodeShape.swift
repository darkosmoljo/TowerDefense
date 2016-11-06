//
//  BulletNodeShape.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 13/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class BulletNodeShape: SKShapeNode, Bullet {
    
    var target: Enemy!
    var tower: Tower!
    
    var exploading: Bool = false
    
    override init() {
        super.init()
        
        name = "bullet"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPhysicsBody() {
        
        physicsBody = SKPhysicsBody(circleOfRadius: frame.size.width / 2)
        physicsBody?.affectedByGravity = false
        physicsBody?.categoryBitMask = BitMasks.bullet
        physicsBody?.collisionBitMask = 0
        physicsBody?.contactTestBitMask = BitMasks.enemy
    }
    
    func getSpeed() -> Float {
        return 0
    }
    
    func getTarget() -> Enemy? {
        return target
    }
    
    func getDamage() -> Int {
        return 10
    }
    
    func animate() {
        
    }
    
    func isAOE() -> Bool {
        return false
    }
    
    func getNode() -> SKNode {
        return self
    }
    
    func setTarget(target: Enemy?) {
        self.target = target
    }
    
    func setTower(tower: Tower?) {
        self.tower = tower
    }
    
    func explode() {
        exploading = true
        clearInstance()
    }
    
    func clearInstance() {
        self.tower?.setBullet(nil)
        self.tower = nil
        self.target = nil
        self.removeAllActions()
        self.removeFromParent()
    }
    
    func recalibrate() {
        
        if (getSpeed() > 0 && target != nil && target.getHealth() > 0) {
            
            if let targetNode: SKNode = target.getNode() {
                
                let x: Float = Float(position.x - targetNode.position.x)
                let y: Float = Float(targetNode.position.y - position.y)
                let direction: Float = atan2f(x, y) + Float(M_PI_2)
                
                let velocityX: CGFloat = CGFloat(getSpeed() * cos(direction))
                let velocityY: CGFloat = CGFloat(getSpeed() * sin(direction))
                
                let newVelocity = CGVectorMake(velocityX, velocityY)
                
                physicsBody?.velocity = newVelocity
            }
        } else if getSpeed() == 0 && isAOE() == false {
            
            if let targetNode: SKNode = target.getNode() {
                position.x = targetNode.position.x
                position.y = targetNode.position.y
            }
            
        } else {
            explode()
        }
    }
    
    func fire() {
        if (target != nil) {
            
            recalibrate()
            
            animate()
        }
    }

}
