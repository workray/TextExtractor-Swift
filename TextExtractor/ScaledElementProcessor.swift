//
//  ScaledElementProcessor.swift
//  TextExtractor
//
//  Created by Mobdev125 on 3/18/19.
//  Copyright © 2019 Mobdev125. All rights reserved.
//

import Firebase

class ScaledElementProcessor {
    let vision = Vision.vision()
    var textRecognizer: VisionTextRecognizer!
    
    init() {
        textRecognizer = vision.onDeviceTextRecognizer()
    }
    
    func process(in imageView: UIImageView,
                 callback: @escaping (_ text: String) -> Void) {
        guard let image = imageView.image else { return }
        let visionImage = VisionImage(image: image)
        textRecognizer.process(visionImage) { result, error in
            guard
                error == nil,
                let result = result,
                !result.text.isEmpty
                else {
                    callback("")
                    return
            }
            callback(result.text)
        }
    }
}
