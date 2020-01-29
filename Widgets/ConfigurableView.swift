//
//  ConfigurableView.swift
//  Widgets
//
//  Created by Vladyslav Tsykhmistro on 29.01.2020.
//  Copyright © 2020 Vladyslav Tsykhmistro. All rights reserved.
//

import UIKit

@IBDesignable class ConfigurableView: UIView {
    
//    @IBInspectable var cornerOnTop: Bool = false {
//        didSet {
//
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) { [unowned self] in
//                if self.cornerOnTop {
//                    self.addTopCorners()
//                    
//                    if self.cornerOnBottom {
//                        self.addAllCorners()
//                    }
//                }
//            }
//        }
//    }
//    
//    @IBInspectable var cornerOnBottom: Bool = false {
//        didSet {
//            
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) { [unowned self] in
//                if self.cornerOnBottom {
//                    self.addBottomCorners()
//                    
//                    if self.cornerOnTop {
//                        self.addAllCorners()
//                    }
//                }
//            }
//        }
//    }
    
//    func addTopCorners() {
//        self.layer.masksToBounds = true
//        self.roundCorners(corners: [.topLeft, .topRight], radius: self.cornerRadius)
//    }
//
//    func addBottomCorners() {
//        self.layer.masksToBounds = true
//        self.roundCorners(corners: [.bottomLeft, .bottomRight], radius: self.cornerRadius)
//    }
//
//    func addAllCorners() {
//        self.layer.masksToBounds = true
//        self.roundCorners(corners: [.bottomLeft, .bottomRight], radius: self.cornerRadius)
//    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
//            if !cornerOnBottom, !cornerOnTop {
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
//            }
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? = UIColor.white {
        didSet {
            
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize() {
        didSet {
            
            layer.masksToBounds = true
            
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable var shadowColor: UIColor? = UIColor.white {
        didSet {
            layer.masksToBounds = true
            layer.shadowColor = shadowColor?.cgColor
            
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
            layer.masksToBounds = true
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowRadius: Float = 0.0 {
        didSet {
            layer.masksToBounds = true
            layer.shadowRadius = CGFloat(shadowRadius)
        }
    }
}

