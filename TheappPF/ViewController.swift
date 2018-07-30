//
//  ViewController.swift
//  TheappPF
//
//  Created by HGPMAC39 on 7/26/18.
//  Copyright © 2018 HGPMAC39. All rights reserved.
//

import UIKit
import FirebaseAuth
import GoogleMaps
class ViewController: UIViewController {
    
  
    
//AIzaSyCWq7R4Wbi6mBzr7dJG59I80giahek5v18
    
    class SignUp: UIViewController {
        
        @IBOutlet weak var emailTextField: UITextField!
        @IBOutlet weak var passwordTextField: UITextField!
        @IBOutlet weak var usernameTextField: UITextField!
        @IBOutlet weak var profilePicView: UIImageView!
        let imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        GMSServices.provideAPIKey("AIzaSyCWq7R4Wbi6mBzr7dJG59I80giahek5v18")
        let camera  = GMSCameraPosition.camera(withLatitude:37.809539 , longitude:-122.279389 , zoom:16.0 )
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view = mapView
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Login(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error)
            in
        if user != nil
        {
            self .performSegue(withIdentifier: "login", sender: self)
            
            }
            else
        {
            let alert = UIAlertController(title: "There was a problem", message: nil, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            }
    }
    
   ) }

}
}
