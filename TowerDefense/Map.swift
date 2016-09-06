//
//  Map.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import Foundation

protocol Map {
    
    func getLevels() -> [Level]
    func getTowers() -> [Tower]
    func getPath() -> [Int]
    func getCheckpoints() -> [Int]
    func getName() -> String
    
}