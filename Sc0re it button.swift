//
//  Sc0re it button.swift
//  Sc0re it Pro
//
//  Created by George on 9/14/15.
//  Copyright (c) 2015 George Zaimis. All rights reserved.
//

import UIKit

class Sc0re_it_button: UIView {
    
    var Bool = false
    var moved = false
    var text = "Let's Sc0re!"
    
    
    
    override func draw(_ rect: CGRect) {
        
        PaintCode.drawSc0reButton(15, textMess: text, pressedIn: self.Bool)
        moved = false
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.Bool = true
        self.setNeedsDisplay()
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        self.Bool = false
        self.setNeedsDisplay()
        testTouches(touches as NSSet!)
        
    }
    
    func testTouches(_ touches: NSSet!) {
        // Get the first touch and its location in this view controller's view coordinate system
        let touch = touches.allObjects[0] as! UITouch
        let touchLocation = touch.location(in: self)
        
        // Convert the location of the obstacle view to this view controller's view coordinate system
        let obstacleViewFrame = self.convert(frame, from: superview)
        
        // Check if the touch is inside the obstacle view
        if obstacleViewFrame.contains(touchLocation) {
            let prefs:UserDefaults = UserDefaults.standard
            prefs.set(1, forKey: "Pass?")
            prefs.synchronize()
        }
        
    }
    
    
   

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
