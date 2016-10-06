//
//  spaceShip.swift
//  TimeTravel
//
//  Created by Victoria Melendez on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    let name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    
    var description: String {
        return "anything"
    }
    
    init(name: String, currentPlanet: Planet) {
        self.name = name
        self.currentPlanet = currentPlanet
    }
    
    func timeTravel() -> Bool {
        if self.speed == .lightSpeed {
            return true
        }
        return false
    }
    
    func isFaster(than spaceShip: SpaceShip) -> Bool {
        if self.speed.rawValue > spaceShip.speed.rawValue {
            return true
        }
        return false
    }
    
    func travel(to planet: Planet) -> Bool {
        
        var returnedBool = false
        print(self.currentPlanet)
        
        if self.currentPlanet == .neptune && self.speed == .lightSpeed {
            
            self.currentPlanet = .mars
            
            return false
        }
        
        if self.currentPlanet == .venus && self.speed == .lightSpeed {
            
            self.currentPlanet = .mars
            return false
        }
        
        if self.currentPlanet == .mercury {
            
            return false
        }
        
        switch self.currentPlanet {
            
        case .venus:
            
            if speed == .fast {
                
                returnedBool = true
                
            } else {
                returnedBool = false
            }
            
        case .earth:
            
            if speed == .fast {
                
                returnedBool = true
            } else {
                returnedBool = false
            }
        case .mars:
            
            if speed == .lightSpeed {
                
                returnedBool = true
            } else {
                returnedBool = false
            }
        case .jupiter:
            
            if speed == .slow {
                
                returnedBool = true
            } else {
                returnedBool = false
            }
        case .saturn:
            
            if speed == .medium {
                
                returnedBool = true
            } else {
                returnedBool = false
            }
        case .uranus:
            
            if speed == .slow {
                
                returnedBool = true
            } else {
                returnedBool = false
            }
        case .neptune:
            
            if speed == .fast {
                
                returnedBool = true
            } else {
                returnedBool = false
            }
            
        default:
            returnedBool = false
            
        }
        
        if returnedBool == true {
            currentPlanet = planet
        }
        return returnedBool
        
    }
    
}
