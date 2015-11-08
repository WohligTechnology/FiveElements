//
//  CurveView.swift
//  FiveElements
//
//  Created by Chintan Shah on 06/11/15.
//  Copyright © 2015 Wohlig Technology. All rights reserved.
//

import UIKit


var mainCurve:Any!

class CurveView: UIView {


    var paths:Any!
    
    var path=UIBezierPath()
    
    var previousPoint:CGPoint
    var lineWidth:CGFloat=2.0
    var lineColor = UIColor.greenColor()
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override init(frame: CGRect) {
        previousPoint=CGPoint.zero
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        previousPoint=CGPoint.zero
        super.init(coder: aDecoder)!
        
      
        
        var panGestureRecognizer=UIPanGestureRecognizer(target: self, action: "pan:")
        panGestureRecognizer.maximumNumberOfTouches=1
        paths = [path]
        
        
        mainCurve = self
        
        self.addGestureRecognizer(panGestureRecognizer)
        
        
       
        
    }
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        lineColor.setStroke()
        path.stroke()
        path.lineWidth=lineWidth
    }
    func pan(panGestureRecognizer:UIPanGestureRecognizer)->Void
    {
        var currentPoint=panGestureRecognizer.locationInView(self)
        let midPoint=self.midPoint(previousPoint, p1: currentPoint)
        
        if panGestureRecognizer.state == .Began
        {
            
                    path.moveToPoint(currentPoint)
        }
        else if panGestureRecognizer.state == .Changed
        {
            path.addQuadCurveToPoint(midPoint,controlPoint: previousPoint)
        }
        
        previousPoint=currentPoint
        self.setNeedsDisplay()
    }
    func midPoint(p0:CGPoint,p1:CGPoint)->CGPoint
    {
        let x=(p0.x+p1.x)/2
        let y=(p0.y+p1.y)/2
        return CGPoint(x: x, y: y)
    }
}
