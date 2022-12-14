//
//  UIlabel + extension.swift
//  Fafa dating
//
//  Created by Артём Тюрморезов on 18.11.2022.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
