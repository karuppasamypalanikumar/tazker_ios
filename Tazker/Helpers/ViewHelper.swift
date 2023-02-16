//
//  ViewHelper.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import Foundation
import UIKit



extension UIView {
    
    func border(
        width: CGFloat,
        color: UIColor
    ) {
        DispatchQueue.main.async {
            self.layer.borderColor = color.cgColor
            self.layer.borderWidth = width
        }
    }
    
    func corner(
        radius: CGFloat,
        corners: CACornerMask = [
            .layerMaxXMaxYCorner,
            .layerMaxXMinYCorner,
            .layerMinXMinYCorner,
            .layerMinXMaxYCorner
        ]
    ) {
        DispatchQueue.main.async {
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = corners
        }
    }
}

extension UITextField {
    
    func placeholderDesign(
        _ color: UIColor
    ) {
        DispatchQueue.main.async {
            self.attributedPlaceholder = NSAttributedString(
                string: "Placeholder Text",
                attributes: [
                    NSAttributedString.Key.foregroundColor:
                        color
                ]
            )
        }
    }
    
    func setPadding(
        _ padding: UIEdgeInsets = UIEdgeInsets(
            top: 0,
            left: 10,
            bottom: 0,
            right: 10)
    ) {
        DispatchQueue.main.async {
            self.textRect(
                forBounds: self.bounds.inset(
                    by: padding
                )
            )
            self.placeholderRect(
                forBounds: self.bounds.inset(
                    by: padding
                )
            )
            self.editingRect(
                forBounds: self.bounds.inset(
                    by: padding
                )
            )
        }
    }
    
    enum ImageSide {
        case left
        case right
    }
    
    func changeHiddenImage() {
        if let imageView = self.rightView?.subviews.filter(
            {$0.isKind(of: UIImageView.self)}
        ).first as? UIImageView {
            self.isSecureTextEntry = imageView.image == UIImage(
                named: Resources.Images.hidePassword.rawValue
            )
            imageView.image = imageView.image == UIImage(
                named: Resources.Images.hidePassword.rawValue
            ) ? UIImage(
                named: Resources.Images.showPassword.rawValue
            ) : UIImage(
                named: Resources.Images.hidePassword.rawValue
            )
        }
    }
    
    func setView(
        image: Resources.Images,
        color: UIColor = .label,
        side: ImageSide,
        padding: CGFloat = 15,
        target: Any? = nil,
        action: Selector? = nil
    ) {
        DispatchQueue.main.async {
            let view = UIView(
                frame: CGRect(
                    x: 0,
                    y: 0,
                    width: self.bounds.height,
                    height: self.bounds.height
                )
            )
            let tap = UITapGestureRecognizer(
                target: target,
                action: action)
            view.addGestureRecognizer(tap)
            let imageView = UIImageView(
                frame: CGRect(
                    x: padding / 2,
                    y: padding / 2,
                    width: self.bounds.height - padding,
                    height: self.bounds.height - padding)
            )
            view.addSubview(imageView)
            imageView.image = UIImage(
                named: image.rawValue
            )
            imageView.tintColor = color
            imageView.contentMode = .scaleAspectFit
            switch side {
            case .left:
                self.leftView = nil
                self.leftView = view
                self.leftViewMode = .always
            case .right:
                self.rightView = nil
                self.rightView = view
                self.rightViewMode = .always
            }
        }
    }
    
}
