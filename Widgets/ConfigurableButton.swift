//
//  ConfigurableButton.swift
//  Widgets
//
//  Created by Vladyslav Tsykhmistro on 29.01.2020.
//  Copyright © 2020 Vladyslav Tsykhmistro. All rights reserved.
//

import UIKit

@IBDesignable
class ConfigurableButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
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

    @IBInspectable var fontColor: UIColor? = UIColor.white {
        didSet {
            self.setTitleColor(fontColor, for: .normal)
        }
    }

    @IBInspectable var outerShadowOffset: CGSize = CGSize() {
        didSet {
            layer.masksToBounds = true

            layer.shadowOffset = outerShadowOffset
            layer.shouldRasterize = true
        }
    }

    @IBInspectable var outShadowColor: UIColor? = UIColor.white {
        didSet {
            layer.masksToBounds = true
            layer.shadowColor = outShadowColor?.cgColor
        }
    }

    @IBInspectable var outShadowOpacity: Float = 0.0 {
        didSet {
            layer.masksToBounds = true
            layer.shadowOpacity = outShadowOpacity
        }
    }

    @IBInspectable var outShadowRadius: Float = 0.0 {
        didSet {
            layer.masksToBounds = true
            layer.shadowRadius = CGFloat(outShadowRadius)
        }
    }

}
