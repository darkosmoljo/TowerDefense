//
//  Scene.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 16/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

protocol Scene {
    
    func setSpriteListener(spriteListener: SpriteListener)
    func removeDependencies()
    func getSKScene() -> SKScene
    func getTowerList() -> [Tower]
    func getListener() -> UIListener
}