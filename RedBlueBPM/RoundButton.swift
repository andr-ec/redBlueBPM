//
//  RoundButton.swift
//  RedBlueBPM
//
//  Created by Andre Carrera on 8/31/17.
//  Copyright © 2017 Carrera. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {


    @IBInspectable var cornerRadius: CGFloat = 0 {
    didSet {
        self.layer.cornerRadius = cornerRadius
    }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
