//
//  TowerNode.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 25/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class TowerNode: SKSpriteNode, Tower {
    
    var bullet: Bullet!
    var enemiesInRange: [Enemy] = []
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        name = "tower"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getIconString() -> String {
        return ""
    }
    
    func getNode() -> SKSpriteNode {
        return self
    }
    
    func createTower() -> Tower {
        return TowerNode()
    }
    
    func getRange() -> Range {
        return RangeNode()
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        toggleRangeVisibility()
    }
    
    func toggleRangeVisibility() {
        print("tower touched")
    }
    
    func didEnterRegion(enemy: Enemy)  {
        enemiesInRange.append(enemy)
    }
    
    func didExitRegion(enemy: Enemy) {
        if let index = enemiesInRange.indexOf({return $0.getId() == enemy.getId()}) {
            enemiesInRange.removeAtIndex(index)
        }
    }
    
    func recalibrate() -> Bullet? {
        
        if bullet?.getTarget()?.getNode() == nil {
            
        } else {
            bullet?.recalibrate()
        }
        
        return bullet
    }
    
    func getBullet() -> Bullet? {
        return bullet
    }
    
    func setBullet(bullet: Bullet?) {
        self.bullet = bullet
    }
    
    func fireOrRecalibrate() -> Bullet? {
        if (getBullet() == nil && enemiesInRange.count > 0) {
            
            setBullet(createBullet())
            
            fire(enemiesInRange[0])
            
            return getBullet()
        }
        else
        {
            recalibrate()
            
            return nil
        }
    }
    
    func fire(enemy: Enemy) {
        bullet?.setTower(self)
        bullet?.setTarget(enemy)
        bullet?.fire()
    }
    
    func createBullet() -> Bullet? {
        return BulletNode()
    }
    
    func getPrice() -> Int {
        return 0
    }
}