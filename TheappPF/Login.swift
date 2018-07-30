//
//  Login.swift
//  TheappPF
//
//  Created by HGPMAC39 on 7/26/18.
//  Copyright © 2018 HGPMAC39. All rights reserved.
//

import UIKit
import FirebaseAuth
class Login: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

   @IBAction func Logout(_ sender: Any) {
    do
    {
      try Auth.auth().signOut()
    self.performSegue(withIdentifier: "logout", sender: self)
    
    
}

    catch{
        
    }
    print("Couldn't log out")
}
}
