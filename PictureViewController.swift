//
//  PictureViewController.swift
//  Orchid_Products
//
//  Created by Eric Y.M. Tai on 2016-02-01.
//  Copyright © 2016 Eric Y.M. Tai. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let query = PFQuery(className: "testName")
        
        query.findObjectsInBackgroundWithBlock {
            (objects: [PFObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                // print("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                if let objects = objects {
                    var count = 0;
                    for object in objects {
                        let product = ProductView(frame: CGRect(x: 50, y:80 + (140 * count), width: 300, height: 130))
                        product.setup()
                        //  product.nameLabel.text = "test"
                        product.nameLabel.text = object["firstName"] as? String
                        
                        //                        let productImageFile = object["img"] as! PFFile
                        //
                        //                        productImageFile.getDataInBackgroundWithBlock {
                        //                            (imageData: NSData?, error: NSError?) -> Void in
                        //                            if error == nil {
                        //                                if let imageData = imageData {
                        //                                    let image = UIImage(data:imageData)
                        //                                    product.imageView.image = image
                        //                                }
                        //                            }
                        //                        }
                        product.backgroundColor = UIColor(red: 161.0/255.0, green: 130.0/255.0, blue: 239.0/255.0, alpha: 1.0)
                        count++
                        self.view.addSubview(product)
                        print(object.objectId)
                    }
                }
            } else {
                // Log details of the failure
                print("Error: \(error!) \(error!.userInfo)")
            }
        }
        
    }

    

}
