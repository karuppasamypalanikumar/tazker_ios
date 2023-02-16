//
//  GifHandler.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import Foundation
import UIKit

public
class GifHandler {
    private
    init() { }
    
    public static
    let shared = GifHandler()
    
    public
    func getImages(from resourceName:String) -> [UIImage]? {
        guard
            let path = Bundle.main.path(
                forResource: resourceName,
                ofType: "gif")
        else {
            print("Gif does not exist at that path")
            return nil
        }
        let url = URL(fileURLWithPath: path)
        guard
            let gifData = try? Data(
                contentsOf: url
            ),
            let source =  CGImageSourceCreateWithData(
                gifData as CFData, nil
            )
        else {
            return nil
        }
        var images = [UIImage]()
        let imageCount = CGImageSourceGetCount(source)
        for i in 0 ..< imageCount {
            if let image = CGImageSourceCreateImageAtIndex(source, i, nil) {
                images.append(UIImage(cgImage: image))
            }
        }
        return images
    }
    
}

