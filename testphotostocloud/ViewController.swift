//
//  ViewController.swift
//  testphotostocloud
//
//  Created by Lauren Traum on 3/2/18.
//  Copyright © 2018 Lauren Traum. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
import FirebaseDatabase


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, GIDSignInUIDelegate {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var currentLocation: UITextField!
    @IBOutlet weak var PhotoLibrary: UIButton!
    @IBOutlet weak var detailsTextField: UITextField!
    
    @IBOutlet weak var Camera: UIButton!
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    

    @IBAction func button1clicked(_ sender: Any) {
        let image = UIImage(named: "closed button") as! UIImage
        button1.setImage(image, for: UIControlState.normal)
        button2.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button3.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button4.setImage(UIImage(named: "open button"), for: UIControlState.normal)
    }
    
    @IBAction func button2clicked(_ sender: Any) {
        let image = UIImage(named: "closed button") as! UIImage
        button2.setImage(image, for: UIControlState.normal)
        button1.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button3.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button4.setImage(UIImage(named: "open button"), for: UIControlState.normal)
    }
    
    @IBAction func button3clicked(_ sender: Any) {
        let image = UIImage(named: "closed button") as! UIImage
        button3.setImage(image, for: UIControlState.normal)
        button1.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button2.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button4.setImage(UIImage(named: "open button"), for: UIControlState.normal)
    }
    
    @IBAction func button4clicked(_ sender: Any) {
        let image = UIImage(named: "closed button") as! UIImage
        button4.setImage(image, for: UIControlState.normal)
        button1.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button2.setImage(UIImage(named: "open button"), for: UIControlState.normal)
        button3.setImage(UIImage(named: "open button"), for: UIControlState.normal)
    }
    
    
    @IBAction func publishInfo(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func PhotoLibraryAction(_ sender: UIButton) {
        
       let picker = UIImagePickerController()
        
        
        picker.delegate = self
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
        
        
    }
    
    @IBAction func CameraAction(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
        
        
        picker.delegate = self
        picker.sourceType = .camera
        
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        ImageDisplay.image=info[UIImagePickerControllerOriginalImage] as? UIImage; dismiss(animated: true, completion: nil)
    }
    
    
}

