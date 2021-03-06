//
//  SingleView.swift
//  Orchid_Products
//
//  Created by Eric Y.M. Tai on 2016-02-11.
//  Copyright © 2016 Eric Y.M. Tai. All rights reserved.
//

import UIKit

class SingleView: UIView {

    let nameLabel = UILabel(frame: CGRect(x: 50, y:10, width: 200, height: 20))
    let priceLabel = UILabel(frame: CGRect(x: 50, y:30, width: 200, height: 20))
    let imageView = UIImageView(frame: CGRect(x:110, y: 50, width: 80, height: 82))
    
    func setup() {
//        let tap = UITapGestureRecognizer(target: self, action: "tapped:")
        
//        self.addGestureRecognizer(tap)
        imageView.contentMode = .ScaleAspectFill
        imageView.clipsToBounds = true
        priceLabel.backgroundColor = UIColor(red: 240.0/255.0, green: 220.0/255.0, blue: 175.0/255.0, alpha: 1.0)
        nameLabel.backgroundColor = UIColor(red: 240.0/255.0, green: 220.0/255.0, blue: 175.0/255.0, alpha: 1.0)
        
        nameLabel.textAlignment = .Center
        priceLabel.textAlignment = .Center
        
        self.addSubview(imageView)
        self.addSubview(priceLabel)
        self.addSubview(nameLabel)
    }
//    func tapped (recongnizer: UITapGestureRecognizer) {
//        self.backgroundColor = UIColor(red: 240.0/255.0, green: 220.0/255.0, blue: 175.0/255.0, alpha: 1.0)
//        self.priceLabel.backgroundColor = UIColor(red: 240.0/255.0, green: 220.0/255.0, blue: 175.0/255.0, alpha: 1.0)
//        self.nameLabel.backgroundColor = UIColor(red: 240.0/255.0, green: 220.0/255.0, blue: 175.0/255.0, alpha: 1.0)
//    }
    
}
