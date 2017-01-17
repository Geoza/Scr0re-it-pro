//
//  ViewController.swift
//  Sc0re it Pro
//
//  Created by George on 10/30/14.
//  Copyright (c) 2014 George Zaimis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var Button: Sc0re_it_button!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        
        UserDefaults.standard.addObserver(self, forKeyPath: "Pass?", options: NSKeyValueObservingOptions.new, context: nil)


    }

    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        //imagePicker.allowsEditing = false
        //imagePicker.delegate = self
        //imagePicker.sourceType = .PhotoLibrary
        
        //presentViewController(imagePicker, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "goto_game", sender: self)
        
    
    }
    
    
    
    
    
    
    /*func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.contentMode = .ScaleAspectFit
            imageView.image = pickedImage
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }*/
    
}

