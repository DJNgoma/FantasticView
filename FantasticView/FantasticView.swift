//
//  FantasticView.swift
//  FantasticView
//
//  Created by Daliso Ngoma on 25/10/2016.
//  Copyright © 2016 Daliso Ngoma. All rights reserved.
//

import UIKit

class FantasticView: UIView {
    
    // MARK: Variables
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var colorCounter = 0
    
    // Class Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter+=1
            }
        }
        
        scheduledColorChanged.fire()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
}
