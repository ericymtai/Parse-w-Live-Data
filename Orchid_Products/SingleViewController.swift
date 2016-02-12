//
//  SingleViewController.swift
//  Orchid_Products
//
//  Created by Eric Y.M. Tai on 2016-02-11.
//  Copyright © 2016 Eric Y.M. Tai. All rights reserved.
//

import UIKit
import Parse

class SingleViewController: UIViewController {
    
    var productName:String = ""

    var tappedPrice = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let query = PFQuery(className: "OrchidProducts")
        
        query.findObjectsInBackgroundWithBlock {
            (objects: [PFObject]?, error: NSError?) -> Void in
        
            if error == nil {
                // The find succeeded.
                // print("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                if let objects = objects {
                    var count = 0;
                    for object in objects {
                        let product = SingleView(frame: CGRect(x: 50, y:80 + (150 * count), width: 300, height: 140))
                        product.setup()
                        product.nameLabel.text = object["orchidName"] as? String
                        
                        let price = object["orchidPrice"]
                        product.priceLabel.text =  "Price: $" + String(price)
                        
                        let productImageFile = object["orchidImg"] as! PFFile
                        productImageFile.getDataInBackgroundWithBlock {
                            (imageData: NSData?, error: NSError?) -> Void in
                            if error == nil {
                                if let imageData = imageData {
                                    let image = UIImage(data:imageData)
                                    product.imageView.image = image
                                }
                            }
                        }
                        
                        product.backgroundColor = UIColor(red: 240.0/255.0, green: 220.0/255.0, blue: 175.0/255.0, alpha: 1.0)
                        count++
                        self.view.addSubview(product)
//                        let tapGesture = UITapGestureRecognizer(target: self, action: "openDetails:")
//                        product.addGestureRecognizer(tapGesture)
                        
                        print(object.objectId)
                    }
                }
            } else {
                // Log details of the failure
                print("Error: \(error!) \(error!.userInfo)")
            }
        }
    }
//    func openDetails(recognizer: UITapGestureRecognizer) {
//        print("Called\(recognizer)")
//        let product = recognizer.view as? ProductView
//        
//        self.performSegueWithIdentifier("solo", sender: product)
//    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "solo" {
//            print("test\(sender!.priceLabel.text)")
//            let destination = (segue.destinationViewController as! SingleViewController)
//            destination.productName = sender!.nameLabel.text!
//        }
//    }
    
}
