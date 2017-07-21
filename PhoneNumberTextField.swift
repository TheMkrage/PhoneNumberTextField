//
//  PhoneNumberTextField.swift
//  Pods
//
//  Created by iOS Developer on 7/21/17.
//
//

import UIKit

public class PhoneNumberTextField: UIView {

    public var textField: UITextField!
    public var flagButton: UIButton!
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10.0
        self.textField = UITextField(frame: CGRect.zero)
        self.textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "(111) 111-1111"
        
        self.flagButton = UIButton(frame: CGRect.zero)
        self.flagButton.translatesAutoresizingMaskIntoConstraints = false
        self.flagButton.setTitle("🇺🇸", for: .normal)
        self.flagButton.titleLabel?.font = UIFont.systemFont(ofSize: 36.0)
        
        self.addSubview(textField)
        self.addSubview(flagButton)
    }
    
    override public func updateConstraints() {
        super.updateConstraints()
        
        flagButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        flagButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15.0).isActive = true
        flagButton.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        flagButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.175).isActive = true
        
        //textField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        textField.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textField.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.75).isActive = true
        textField.leadingAnchor.constraint(equalTo: flagButton.trailingAnchor, constant: 18.0).isActive = true
    }

}
