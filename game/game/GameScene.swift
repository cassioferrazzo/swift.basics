//
//  GameScene.swift
//  game
//
//  Created by Student on 9/23/16.
//  Copyright (c) 2016 Cassio Ferrazzo. All rights reserved.
//

import SpriteKit

func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x * scalar, y: point.y * scalar)
}

func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x / scalar, y: point.y / scalar)
}

#if !(arch(x86_64) || arch(arm64))
    func sqrt(a: CGFloat) -> CGFloat {
        return CGFloat(sqrtf(Float(a)))
    }
#endif

extension CGPoint {
    func length() -> CGFloat {
        return sqrt(x*x + y*y)
    }
    
    func normalized() -> CGPoint {
        return self / length()
    }
}


class GameScene: SKScene {
    
    // Random
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    func random(min min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }

    
    let player = SKSpriteNode (imageNamed: "player")
    
    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = SKColor.whiteColor()
        
        player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        
        addChild(player)
        
        runAction(SKAction.repeatActionForever(
            SKAction.sequence([
                SKAction.runBlock(addMonsters),
                SKAction.waitForDuration(1.0)])
            ))
    }
    
    
    func addMonsters(){
        
        let monster = SKSpriteNode(imageNamed: "monster")
        
        let minY = monster.size.height/2
        let maxY = size.height - monster.size.height / 2
        let monsterY = random(min: minY, max: maxY)
        
        let monsterX = size.width + monster.size.width / 2
        
        monster.position = CGPoint(x: monsterX, y: monsterY)
        
        addChild(monster)
        
        let minDuration = CGFloat(2.0)
        let maxDuration = CGFloat(4.0)
        
        let actualDuration = random(min: minDuration, max: maxDuration)
        
        let destination = CGPoint(x: -monster.size.width/2, y: monsterY)
        
        let actionMove = SKAction.moveTo(destination, duration: NSTimeInterval(actualDuration))
        
        let actionMoveDone = SKAction.removeFromParent()
        
        let actionSequence = SKAction.sequence([actionMove,actionMoveDone])
        
        monster.runAction(actionSequence)
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        guard let touch = touches.first else {
            return
        }
        
    }
    
}
