//
//  AppearanceProvider.swift
//  swift-2048
//
//  Created by Austin Zheng on 6/3/14.
//  Copyright (c) 2014 Austin Zheng. All rights reserved.
//

import UIKit

@class_protocol protocol AppearanceProviderProtocol {
  func tileColor(value: Int) -> UIColor
  func numberColor(value: Int) -> UIColor
    func fontForNumbers(value: Int) -> UIFont
}

class AppearanceProvider: AppearanceProviderProtocol {

  // Provide a tile color for a given value
  func tileColor(value: Int) -> UIColor {
    switch value {
    case 8:
      return UIColor(red: 238.0/255.0, green: 228.0/255.0, blue: 218.0/255.0, alpha: 1.0)
    case 16:
      return UIColor(red: 237.0/255.0, green: 224.0/255.0, blue: 200.0/255.0, alpha: 1.0)
    case 32:
      return UIColor(red: 242.0/255.0, green: 177.0/255.0, blue: 121.0/255.0, alpha: 1.0)
    case 64:
      return UIColor(red: 245.0/255.0, green: 149.0/255.0, blue: 99.0/255.0, alpha: 1.0)
    case 128:
      return UIColor(red: 246.0/255.0, green: 124.0/255.0, blue: 95.0/255.0, alpha: 1.0)
    case 256:
      return UIColor(red: 246.0/255.0, green: 94.0/255.0, blue: 59.0/255.0, alpha: 1.0)
    case 512, 1024, 2048:
      return UIColor(red: 237.0/255.0, green: 207.0/255.0, blue: 114.0/255.0, alpha: 1.0)
    case 4096:
        return UIColor(red: 255.0/255.0, green:0/255.0, blue:255.0/255.0, alpha: 1.0)
    default:
      return UIColor.blackColor()
    }
  }

  // Provide a numeral color for a given value
  func numberColor(value: Int) -> UIColor {
    switch value {
    case 8...64:
      return UIColor(red: 119.0/255.0, green: 110.0/255.0, blue: 101.0/255.0, alpha: 1.0)
    default:
      return UIColor.whiteColor()
    }
  }

  // Provide the font to be used on the number tiles
    func fontForNumbers(value: Int) -> UIFont {
        switch value{
            case 8...64:
                return UIFont(name: "HelveticaNeue-Bold", size: 20)
            case 128...512:
                return UIFont(name: "HelveticaNeue-Bold", size: 16)
            default:
                return UIFont(name: "HelveticaNeue-Bold", size: 14)
            
        }
  }
}
