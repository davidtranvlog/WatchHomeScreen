//
//  Extensions.swift
//  ProjectInterest
//
//  Created by Duc Tran on 6/9/15.
//  Copyright (c) 2015 Developer Inspirus. All rights reserved.
//

import UIKit

extension UIColor
{
    class func randomColor() -> UIColor
    {
        let random = Int(arc4random()) % 9
        switch (random) {
        case 1: return UIColor(red: 244/255.0, green: 67/255.0, blue: 54/255.0, alpha: 1.0)
        case 2: return UIColor(red: 156/255.0, green: 39/255.0, blue: 176/255.0, alpha: 1.0)
        case 3: return UIColor(red: 103/255.0, green: 58/255.0, blue: 183/255.0, alpha: 1.0)
        case 4: return UIColor(red: 33/255.0, green: 150/255.0, blue: 243/255.0, alpha: 1.0)
        case 5: return UIColor(red: 124/255.0, green: 77/255.0, blue: 255/255.0, alpha: 1.0)
        case 6: return UIColor(red: 3/255.0, green: 169/255.0, blue: 244/255.0, alpha: 1.0)
        case 7: return UIColor(red: 255/255.0, green: 87/255.0, blue: 34/255.0, alpha: 1.0)
        case 8: return UIColor(red: 213/255.0, green: 0/255.0, blue: 249/255.0, alpha: 1.0)
        default: return UIColor(red: 233/255.0, green: 30/255.0, blue: 99/255.0, alpha: 1.0)
        }
    }
}



