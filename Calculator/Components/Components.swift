//
//  File.swift
//  Calculator
//
//  Created by Solomon Opoku on 4/17/23.
//

import Foundation
import UIKit

class ResultView: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    private func setup() {
        self.text = "0"
        self.font = self.font.withSize(64)
        self.textColor = UIColor.white
        self.textAlignment = .right
        self.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
}


class InputButton: UIButton {
    
    override init(frame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100) ) {
        super.init(frame: frame)
        setup()
    }
    
    convenience init(buttonText : String, frame1: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100), buttonColor: UIColor = .black, backgroundColor: UIColor = .darkGray) {
        self.init(frame: frame1)
        self.setTitle(buttonText, for: .normal)
        self.setTitleColor(buttonColor, for: .normal)
        self.backgroundColor =  backgroundColor
        
        
}
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle("0", for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        self.backgroundColor = .darkGray
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = self.bounds.height / 2
        self.clipsToBounds = true
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
        
    }
}


