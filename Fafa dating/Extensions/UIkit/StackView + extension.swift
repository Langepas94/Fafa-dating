//
//  StackView + extension.swift
//  Fafa dating
//
//  Created by Артём Тюрморезов on 18.11.2022.
//

import Foundation
import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
