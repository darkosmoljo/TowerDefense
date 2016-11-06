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
    var checkpoints: [CGPoint]!
    
    func setCheckpoints(checkpoints: [CGPoint]) {
        self.checkpoints = checkpoints
    }
    
    func startPath() {
        self.checkpoints.removeFirst()
        
        goto(self.checkpoints[0])
    }
    
    func getSpeed() -> Int {
        return 100
    }
    
    func getValue() -> Int {
        return 5
    }
    
    func getNode() -> SKSpriteNode? {
        return self
    }
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        let thirdSize = CGSize(width: frame.size.width / 3, height: frame.size.height / 3)
        
        physicsBody = SKPhysicsBody(rectangleOfSize: thirdSize)
        physicsBody?.affectedByGravity = false
        physicsBody?.categoryBitMask = BitMasks.enemy
        physicsBody?.collisionBitMask = 0
        physicsBody?.contactTestBitMask = BitMasks.bullet | BitMasks.commandCenter
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
    
    func damage() -> Int {
        return 1
    }
    
    func takeDamage(damage: Int) {
        health = health - damage
    }
    
    func getHealth() -> Int {
        return health
    }
    
    func getAnimation(currentLocation: CGPoint, nextPoint: CGPoint) -> [SKTexture]? {
        return nil
    }
    
    // private methods
    
    private func calculateSpeed(nextPoint: CGPoint) -> Double {
        return hypot(Double(nextPoint.x) - Double(position.x), Double(nextPoint.y) - Double(position.y)) / Double(getSpeed())
    }
    
    private func goto(nextLocation: CGPoint) {
        removeAllActions()
        
        let currentLocation = CGPoint(x: position.x, y: position.y)
        
        let nextPoint = CGPoint(x: nextLocation.x, y: nextLocation.y)
        let speed = calculateSpeed(nextPoint)
        
        if let animation: [SKTexture] = getAnimation(currentLocation, nextPoint: nextPoint) {
            let walkAnim: SKAction = SKAction.animateWithTextures(animation, timePerFrame: 0.1)
            runAction(SKAction.repeatActionForever(walkAnim))
        }
        
        self.checkpoints.removeAtIndex(0)
        
        let walkAction: SKAction = SKAction.moveTo(nextPoint, duration: speed)
        runAction(walkAction, completion: {() -> Void in
            if (self.checkpoints.count > 0) {
                self.goto(self.checkpoints[0])
            }
        })
    }
}
