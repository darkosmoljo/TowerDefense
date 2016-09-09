//
//  GameManager.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import Foundation

final class GameCoordinator {
    
    let maps: [Map]
    let board: Board
    
    var activeMap: Map!
    var levels: [Level]?
    
    func removeDependencies() {
        board.removeDependencies()
        
    }
    
    init(board: Board) {
        
        maps = [GrassMap()]
        self.board = board
    }
    
    func startFirstMap() -> Map {
        start(maps[0])
        
        return maps[0]
    }
    
    func startNextMap() -> Map! {
        var maps = self.maps
        maps.removeFirst()
        
        if maps.count > 0 {
            start(maps.first!)

            return maps.first!
        }
        
        return nil
    }
    
    private func start(map: Map) {
        board.setupMap(map)
        
        self.activeMap = map
        self.levels = map.getLevels()
        
        weak var thizz: GameCoordinator! = self

        delay(10, closure: {
            thizz?.startFirstLevel()
        })
    }
    
    private func startFirstLevel() -> (Int, Int) {
        
        startLevel(activeMap.getLevels()[0])
        
        return (0, activeMap.getLevels().count)
    }
    
    func startNextLevel() -> (Int, Int)! {
        
        if self.levels?.count > 0 {
            
            let level: Level = levels!.first!
            
            startLevel(level)
            
            let indexOf: Int = activeMap.getLevels().indexOf({return $0.getId() == level.getId()})!
            return (indexOf + 1, activeMap.getLevels().count)
        }
        
        return nil
    }
    
    private func startLevel(level: Level) {
        putEnemiesOnBoard(level.getEnemies(), delaySeconds: level.getDelay())
        
        levels?.removeFirst()
    }
    
    private func putEnemiesOnBoard(enemies: [Enemy], delaySeconds: Double) {
        
        if (enemies.count > 0) {
            board.putEnemy(enemies[0])
            
            var enemiesMinuesOne = enemies
            
            enemiesMinuesOne.removeAtIndex(0)
            
            weak var thizz: GameCoordinator! = self
            
            delay(delaySeconds, closure: {
                thizz?.putEnemiesOnBoard(enemiesMinuesOne, delaySeconds: delaySeconds)
            })
        }
    }
    
    private func delay(delay: Double, closure: ()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(),
            closure
        )
    }
    
}