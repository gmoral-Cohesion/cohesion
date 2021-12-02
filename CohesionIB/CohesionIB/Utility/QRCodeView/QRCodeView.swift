//
//  QRCodeView.swift
//  CohesionIB
//
//  Created by Admin on 27/11/18.
//  Copyright © 2018 Ravi Vora. All rights reserved.
//

import Foundation
import CoreImage
import UIKit

class QRCodeView: UIView {
    lazy var filter = CIFilter(name: "CIQRCodeGenerator")
    lazy var imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
    func generateCode(_ string: String) {
        guard let filter = filter,
            let data = string.data(using: .isoLatin1, allowLossyConversion: false) else {
                return
        }
        filter.setValue(data, forKey: "inputMessage")
        
        guard let ciImage = filter.outputImage else {
            return
        }
        imageView.image = UIImage(ciImage: ciImage, scale: 2.0, orientation: .up)
    }
}
