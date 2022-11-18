//
//  UIimageview + extension.swift
//  Fafa dating
//
//  Created by Артём Тюрморезов on 18.11.2022.
//

import Foundation
import UIKit

extension UIImageView {
    convenience init(image: String, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = UIImage(named: image)
        self.contentMode = contentMode
    }
}
