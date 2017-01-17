//
//  Sc0re it.swift
//  Sc0re it Pro
//
//  Created by George on 10/30/14.
//  Copyright (c) 2014 George Zaimis. All rights reserved.
//
//  I am 14 years old and i have copyrights?

import UIKit

class Sc0re_it: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    //Outlets Daaaa....
    @IBOutlet var Player1: UILabel!
    @IBOutlet var Player2: UILabel!
    @IBOutlet var Sc0reOfPlayer1: UILabel!
    @IBOutlet var Sc0reOfPlayer2: UILabel!
    @IBOutlet var Player1Field: UITextField!
    @IBOutlet var Player2Field: UITextField!
    @IBOutlet var ButtonProtection: UIButton!
    @IBOutlet var BackButton: UIButton!
    @IBOutlet var SearchAndDestroy: UIButton!
    @IBOutlet var NameThe: UILabel!
    @IBOutlet var TextFieldNilText: UILabel!
    @IBOutlet var Player1Sc0reButton: UIButton!
    @IBOutlet var Player2Sc0reButton: UIButton!
    @IBOutlet var UndoPlayer1: UIButton!
    @IBOutlet var UndoPlayer2: UIButton!
    @IBOutlet var Menu: UIButton!
    @IBOutlet var TextField0: UILabel!
    
    @IBOutlet var Pic: UIImageView!
    @IBOutlet var Pic2: UIImageView!
    
    var test2:Int = 0
    var test: [UIImageView] = []
    var statusBarIsVisible = true
    //Player1 score storage
    var Player1S0reStorage = 0
    //Player2 score storage
    var Player2S0reStorage = 0
    //Players photo paste
    var PlayersPic = 0
    
    
    var imagePicker: UIImagePickerController!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blur = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.light))
        let blur2 = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.dark))
        blur.frame = CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: self.view.frame.width + 35, height: self.view.frame.height / 2)
        blur2.frame = CGRect(x: self.view.frame.origin.x, y: self.view.frame.height / 2, width: self.view.frame.width + 35, height: self.view.frame.height / 2)
        self.ButtonProtection.addSubview(blur)
        self.ButtonProtection.addSubview(blur2)
        
        
        //Rotate "Player1" label
        Player1.transform = CGAffineTransform(rotationAngle: 3.14)
        //Rotate "Sc0reOfPlayer1" label
        Sc0reOfPlayer1.transform = CGAffineTransform(rotationAngle: 3.14)
        //Rotate "UndoPlayer1" Button
        UndoPlayer1.transform = CGAffineTransform(rotationAngle: 3.14)
        //Hide with magics
        self.Menu.isHidden = true
        self.UndoPlayer1.isHidden = true
        self.UndoPlayer2.isHidden = true
        
        
        test.append(Pic)
        test.append(Pic2)
        
        self.Pic.isHidden = true
        self.Pic.layer.cornerRadius = self.Pic.frame.size.height/2
        self.Pic.layer.masksToBounds = true
        self.Pic.layer.borderColor = UIColor.white.cgColor
        self.Pic.layer.borderWidth = 2
        
        self.Pic2.isHidden = true
        self.Pic2.layer.cornerRadius = self.Pic.frame.size.height/2
        self.Pic2.layer.masksToBounds = true
        self.Pic2.layer.borderColor = UIColor.black.cgColor
        self.Pic2.layer.borderWidth = 2
    
        
    }
    
    override var preferredStatusBarUpdateAnimation : UIStatusBarAnimation {
        return UIStatusBarAnimation.slide
    }
    
    override var prefersStatusBarHidden : Bool {
        if statusBarIsVisible {
            return false
        } else {
            return true
        }
    }
    
    //Action of button "GO!"
    @IBAction func SearchAndDestroy(_ sender: AnyObject) {
        
        statusBarIsVisible = false
        prefersStatusBarHidden
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.setNeedsStatusBarAppearanceUpdate()
        }) 
        
        //If field "Player1Field" is empty
        if Player1Field.text == TextFieldNilText.text {
            
            //Fill with... if field "Player1Field" is empty
            self.Player1.text = "Player1"
            
        }else{
            
            //Player1 name
            self.Player1.text = self.Player1Field.text
            self.Player1Field.resignFirstResponder()
            
        }
        
        //If field "Player2Field" is empty
        if Player2Field.text == TextFieldNilText.text {
            
            //Fill with... if field "Player2Field" is empty
            self.Player2.text = "Player2"
            
        }else{
            
            //Player2name
            self.Player2.text = self.Player2Field.text
            self.Player2Field.resignFirstResponder()
            
        }
        
        //Hide the things
        self.SearchAndDestroy.isHidden = true;
        self.BackButton.isHidden = true;
        self.NameThe.isHidden = true;
        self.Player1Field.isHidden = true;
        self.Player2Field.isHidden = true;
        self.ButtonProtection.isHidden = true;
        //Unhide with magics
        self.Menu.isHidden = false;
        self.UndoPlayer1.isHidden = false;
        self.UndoPlayer2.isHidden = false;
        
    }
    

    //Adding score to "Sc0reOfPlayer1" label
    @IBAction func Player1Sc0reButton(_ sender: UIButton) {
        
        //Plus 1
        Player1S0reStorage += 1
        
        //Print that
        self.Sc0reOfPlayer1.text = String(Player1S0reStorage)
        
    }
    
    
    
    
    //Adding score to "Sc0reOfPlayer2" label
    @IBAction func Player2Sc0reButton(_ sender: UIButton) {
        
        //Plus 1
        Player2S0reStorage += 1
        
        //Print that
        self.Sc0reOfPlayer2.text = String(Player2S0reStorage)
        
    }
    
    
    
    
    //Undo score to "Sc0reOfPlayer1" label
    @IBAction func UndoPlayer1(_ sender: UIButton) {
        
        
        if Sc0reOfPlayer1.text == TextField0.text {
            
            let msgTitle = "Oups!"
            let msgString = "You are already to the 0 you can't go lower."
            
            let alert : UIAlertView = UIAlertView()
            alert.title = msgTitle
            alert.message = msgString
            alert.addButton(withTitle: "OK!")
            alert.show()
            
        }else{
       
            let title = "Undo?"
            let message = NSLocalizedString("Are you sure that you what to undo the Score of \(String(describing: Player1.text))?", comment: "")
            let cancelButtonTitle = NSLocalizedString("No", comment: "")
            let otherButtonTitle = NSLocalizedString("Undo!", comment: "")
            
            let alertController = UIAlertController(title: title, message: message, preferredStyle:  .alert)
            
            let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel){ action in }
            
            let otherAction = UIAlertAction(title: otherButtonTitle, style: .default){

                action in
            
                //Minus 1
                self.Player1S0reStorage -= 1
            
                //Print that
                self.Sc0reOfPlayer1.text = String(self.Player1S0reStorage)
            
            
            }
        
        alertController.addAction(cancelAction)
        alertController.addAction(otherAction)
        present(alertController, animated: true, completion: nil)
            
        }
        
    }
    
    

 
    //Undo score to "Sc0reOfPlayer2" label
    @IBAction func UndoPlayer2(_ sender: UIButton) {
        
        if Sc0reOfPlayer2.text == TextField0.text {
            
            let msgTitle = "Oups!"
            let msgString = "You are already to the 0 you can't go lower."
            
            let alert : UIAlertView = UIAlertView()
            alert.title = msgTitle
            alert.message = msgString
            alert.addButton(withTitle: "OK!")
            alert.show()
            
        }else{
        
            let title = "Undo?"
            let message = NSLocalizedString("Are you sure that you what to undo the Score of \(String(describing: Player2.text))?", comment: "")
            let cancelButtonTitle = NSLocalizedString("No", comment: "")
            let otherButtonTitle = NSLocalizedString("Undo!", comment: "")
        
            let alertController = UIAlertController(title: title, message: message, preferredStyle:  .alert)
        
            let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel){ action in }
        
            let otherAction = UIAlertAction(title: otherButtonTitle, style: .default){
            
                action in

        
                //Minus 1
                self.Player2S0reStorage -= 1
        
                //Print that
                self.Sc0reOfPlayer2.text = String(self.Player2S0reStorage)
            
            }
        
        alertController.addAction(cancelAction)
        alertController.addAction(otherAction)
        present(alertController, animated: true, completion: nil)
            
        }
        
    }
    
    
    

    @IBAction func Menu(_ sender: UIButton) {
        
        let title = "Menu?"
        let message = NSLocalizedString("Are you sure that you what to go on the home screen? Any score will be lost.", comment: "")
        let cancelButtonTitle = NSLocalizedString("NO!", comment: "")
        let otherButtonTitle = NSLocalizedString("YES!", comment: "")
        //let moreButtonTitle = NSLocalizedString("Print", comment: "")
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel){ action in }
        
        let otherAction = UIAlertAction(title: otherButtonTitle, style: .default){
            
            action in
            
            self.performSegue(withIdentifier: "goto_home", sender: self)
            
        }
        
        /*
        let moreAction = UIAlertAction(title: moreButtonTitle, style: .Default){
        
            action in NSLog("Yes?")
            
        }
        */

        alertController.addAction(cancelAction)
        alertController.addAction(otherAction)
        //alertController.addAction(moreAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func ChoosePlayer1PastePic(_ sender: UIButton) {
        
        PlayersPic = 1
        photograber(0)
        
    }
    
    
    
    
    @IBAction func ChoosePlayer2PastePic(_ sender: UIButton) {
        
        PlayersPic = 2
        photograber(1)
        
    }
    
    
    
    func photograber(_ number: Int) {
        // 1
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        // 2
        let deleteAction = UIAlertAction(title: "Wanna take a selfie", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            
            self.imagePicker = UIImagePickerController()
            self.imagePicker.delegate = self
            self.imagePicker.allowsEditing = true
            self.imagePicker.sourceType = .camera
            
            self.present(self.imagePicker, animated: true, completion: nil)
            
        })
        let saveAction = UIAlertAction(title: "Wanna choose from my library", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in

            self.imagePicker = UIImagePickerController()
            self.imagePicker.delegate = self
            self.imagePicker.allowsEditing = true
            self.imagePicker.sourceType = .photoLibrary
            
            self.present(self.imagePicker, animated: true, completion: nil)
            
        })
        
        //3
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        
        // 4
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(saveAction)
        optionMenu.addAction(cancelAction)
        
        // 5
        self.present(optionMenu, animated: true, completion: nil)
        
        test2 = number
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            test[test2].image = pickedImage
            test[test2].isHidden = false
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
