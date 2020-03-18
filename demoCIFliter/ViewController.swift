//
//  ViewController.swift
//  demoCIFliter
//
//  Created by Daniel on 2020/3/18.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit
import CoreImage.CIFilterBuiltins

class ViewController: UIViewController {
    
    @IBOutlet weak var colorChangeChoose: UISegmentedControl!
    @IBOutlet weak var picImageView: UIImageView!
    @IBAction func filterSliderChange(_ sender: UISlider) {
        if colorChangeChoose.selectedSegmentIndex == 0 {
            let image = UIImage(named: "a")
            let ciImage = CIImage(image: image!)
            let filter = CIFilter.colorMonochrome()
            filter.inputImage = ciImage
            filter.intensity = sender.value
            if let outputCIImage = filter.outputImage{
                let filterImage = UIImage(ciImage: outputCIImage)
                picImageView.image = filterImage
            }
        } else {
            let image = UIImage(named: "a")
            let ciImage = CIImage(image: image!)
            let filter = CIFilter.colorControls()
            filter.inputImage = ciImage
            filter.brightness = sender.value
            if let outputCIImage = filter.outputImage{
                let filterImage = UIImage(ciImage: outputCIImage)
                picImageView.image = filterImage
            }
        }
    }
    
}

