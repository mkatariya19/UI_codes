//
//  ViewController.swift
//  Indian_tiranga
//
//  Created by Coditas on 24/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        let twoView = UIView(frame: CGRect(x: 135, y: 50, width: 200, height: 150))
        twoView.backgroundColor = .green
        
       
        view.addSubview(twoView)
        
        let threeView = UIView(frame: CGRect(x: 135, y: 50, width: 200, height: 100))
        threeView.backgroundColor = .white
        
       
        view.addSubview(threeView)
        
        
        let oneView = UIView(frame: CGRect(x: 135, y: 50, width: 200, height: 50))
        oneView.backgroundColor = .orange
      
        view.addSubview(oneView)
        
        let fourView = UIView(frame: CGRect(x: 120, y: 50, width: 15, height: 500))
        fourView.backgroundColor = .brown
      
        view.addSubview(fourView)
        
        let fiveView = UIView(frame: CGRect(x: 80, y: 500, width: 100, height: 50))
        fiveView.backgroundColor = .gray
      
        view.addSubview(fiveView)
        
        let sixView = UIView(frame: CGRect(x: 30, y: 550, width: 200, height: 50))
        sixView.backgroundColor = .gray
      
        view.addSubview(sixView)
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 227, y: 125), radius: CGFloat(24), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
                let shape = CAShapeLayer()
                shape.path = circle.cgPath
                shape.fillColor = UIColor.blue.cgColor
        view.layer.addSublayer(shape)
        
    }
    
    


}


