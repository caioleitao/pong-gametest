//
//  GameScene.swift
//  test Shared
//
//  Created by Kyle on 6/26/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var ball = SKSpriteNode()
    var enemy = SKSpriteNode()
    var player = SKSpriteNode()
    
    
    fileprivate var label : SKLabelNode?
    fileprivate var spinnyNode : SKShapeNode?

    
    class func newGameScene() -> GameScene {
        // Load 'GameScene.sks' as an SKScene.
        guard let scene = SKScene(fileNamed: "GameScene") as? GameScene else {
            print("Failed to load GameScene.sks")
            abort()
        }
        
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        return scene
    }
    
    override func didMove(to view: SKView) {
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        enemy = self.childNode(withName: "enemy") as! SKSpriteNode
        player = self.childNode(withName: "player") as! SKSpriteNode
        
        ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20 ))
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame )
        
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border  
        
      
    }
   


}
