//
//  GameScene.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright (c) 2015 Darko Smoljo. All rights reserved.
//

import SpriteKit

class GameScene: SKScene, Scene, UIListener, BoardListener {
    
    var coordinator: GameCoordinator!
    
    var board: Board!
    var spriteListener: SpriteListener!
    
    deinit {
        print("deinited")
    }
    
    override func didMoveToView(view: SKView) {
        
        self.scaleMode = SKSceneScaleMode.AspectFill
        self.anchorPoint = CGPointZero
        
        board = BoardNode(boardListener: self)
        
        board.getNode().anchorPoint = CGPointZero
        
        self.coordinator = GameCoordinator(board: board)
        
        self.addChild(board.getNode())
        
        let pan: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(GameScene.pan(_:)))
        self.view?.addGestureRecognizer(pan)
        
        self.physicsWorld.contactDelegate = board
        
        let map: Map = coordinator.startFirstMap()
        
        spriteListener.playingLevel((1, map.getLevels().count))
        spriteListener.playingMap(map.getName())
    }
    
    func setSpriteListener(spriteListener: SpriteListener) {
        self.spriteListener = spriteListener
    }
    
    func removeDependencies() {
        self.coordinator.removeDependencies()
        self.coordinator = nil
        
        self.board.removeDependencies()
        self.board = nil
        
        self.spriteListener = nil
    }
    
    func getSKScene() -> SKScene {
        return self
    }
    
    func getTowerList() -> [Tower] {
        return board.getMap().getTowers()
    }
    
    func getListener() -> UIListener {
        return self
    }
    
    func pan(recognizer: UIPanGestureRecognizer) {
        
        if (recognizer.state == UIGestureRecognizerState.Began) {
            
        } else if (recognizer.state == UIGestureRecognizerState.Changed) {
            
            var translation: CGPoint = recognizer.translationInView(recognizer.view)
            translation = CGPointMake(translation.x, -translation.y)
            self.panForTranslation(translation)
            recognizer.setTranslation(CGPointZero, inView: recognizer.view)
            
        } else if (recognizer.state == UIGestureRecognizerState.Ended) {
            
            let scrollDuration: Double = 0.2
            let velocity: CGPoint = recognizer.velocityInView(recognizer.view)
            let pos: CGPoint = board.getNode().position
            let p: CGPoint = self.mult(velocity, s: CGFloat(scrollDuration))
            
            var newPos: CGPoint = CGPointMake(pos.x + p.x, pos.y + p.y)
            newPos = self.boundLayerPos(newPos)
            board.getNode().removeAllActions()
            
            let moveTo: SKAction = SKAction.moveTo(newPos, duration: scrollDuration)
            moveTo.timingMode = SKActionTimingMode.EaseOut
            board.getNode().runAction(moveTo)
        }
    }
    
    func panForTranslation(translation: CGPoint) {
        
        let position: CGPoint = board.getNode().position
        let newPos: CGPoint = CGPointMake(position.x + translation.x, position.y + translation.y)
        board.getNode().position = self.boundLayerPos(newPos)
    }
    
    func boundLayerPos(newPos: CGPoint) -> CGPoint {
        
        let winSize: CGSize = (self.view?.bounds.size)!;
        var retVal: CGPoint = newPos
        retVal.x = min(retVal.x, 0)
        let diff1: CGFloat = -board.getNode().size.width + winSize.width
        retVal.x = max(retVal.x, diff1)
        retVal.y = min(retVal.y, 0)
        let diff2: CGFloat = -board.getNode().size.height + winSize.height
        retVal.y = max(retVal.y, diff2)
        
        return retVal
    }
    
    func mult(v: CGPoint, s: CGFloat) -> CGPoint {
        return CGPointMake(v.x * s, -v.y * s);
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("Game Scene touched")
    }
    
    override func update(currentTime: CFTimeInterval) {
        board.updateFrame()
    }
    
    // UIListener
    
    func putTower(tower: Tower) {
        board.putTower(tower)
    }
    
    // Board Listener
    
    func tileSelected(selected: Bool) {
        spriteListener.toggleTowerList(selected)
    }
    
    func ccHealthStatus(currentHealth: Int) {
        spriteListener.healthStatus(currentHealth)
    }
    
    func enemyDestroyed(enemyValue: Int) {
        spriteListener.addValue(enemyValue)
    }
    
    func allEnemiesDestroyed() {
        if let playingLevel:(Int, Int) = coordinator.startNextLevel() {
            spriteListener.playingLevel(playingLevel)
        } else if let map = coordinator.startNextMap() {
            spriteListener.playingMap(map.getName())
        } else {
            spriteListener.declareWinner()
        }
    }
}
