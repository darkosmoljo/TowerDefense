//
//  FirstMap.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

public class GrassMap : Map {
    
    let levels: [Level]
    let towers: [Tower]
    let path: [Int]
    let checkpoints: [Int]
    
    init() {
        
        levels = [KerriganLevel(), LurkerLevel(), MutaliskLevel(), DefilerLevel(), GuardianLevel(),
                  ZerglingLevel(), UltraliskLevel(), ScourgeLevel(), InfestorLevel(), CivilianLevel(),
                  ZealotsLevel(), HydrasLevel(), MixedLevel1()]
        
        towers = [ZealotTower(), TemplarTower(), ArchonTower(), DarkTower()]
        
        path = [25, 26, 27, 28, 33, 34, 35, 36, 37, 38, 46, 49, 54, 59, 63, 64, 65, 66, 67, 70,
                75, 80, 91, 96, 101, 109, 110, 111, 112, 114, 115, 116, 117, 122, 130, 135, 143,
                151, 152, 153, 154, 155, 156, 164, 181, 182, 183, 184, 185, 202, 210, 211, 212, 217, 218,
                219, 220, 223, 224, 225, 226, 227, 228, 231, 232, 233, 234, 235, 238, 241, 249, 252, 253,
                254, 256, 257, 258, 259, 262, 263, 264, 265, 266, 267, 268, 269, 270]
        
        checkpoints = [63, 67, 25, 28, 112, 109, 151, 156, 114,
                       117, 33, 38, 185, 181, 223, 228, 270,
                       262, 220, 217, 259, 256, 235, 232]

    }
    
    func getLevels() -> [Level] {
        return levels
    }
    
    func getTowers() -> [Tower] {
        return towers
    }
    
    func getPath() -> [Int] {
        return path
    }
    
    func getCheckpoints() -> [Int] {
        return checkpoints
    }
    
    func getName() -> String {
        return "Grass Attack!"
    }
}
