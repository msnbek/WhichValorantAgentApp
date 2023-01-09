//
//  ViewController.swift
//  Which Valorant Agent I need to Choose
//
//  Created by Mahmut Şenbek on 1.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var astraImage: UIImageView!
    
    var images = agentImages.ımagesArray
    var agentNameImage : UIImage?

    
   weak var timer : Timer?
    
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        
        timer?.invalidate()
        
    }
    @IBAction func buttonPress(_ sender: UIButton) {
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(randomImageRepeat), userInfo: nil, repeats: true)
    }
    
    @objc func randomImageRepeat() {
        
        if let image =  images.randomElement()  {
            astraImage.image = image
            if let agentName =  image {
               
                astraImage.image = agentName
                if let imgName = agentName.imageAsset?.value(forKey: "assetName") {
                    let imgNameString : String = imgName as! String
                    print(imgNameString)
                    textLabel.text = imgNameString
               
                }
        }
         
        
        }
        
     
    }
    
}

