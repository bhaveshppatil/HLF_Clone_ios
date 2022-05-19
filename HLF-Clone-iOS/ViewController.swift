//
//  ViewController.swift
//  HLF-Clone-iOS
//
//  Created by Perennial Macbook on 19/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var createAnAccount: UIButton!
    
    var signUpVM : SignUpVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    static func getVC(with signUpVM : SignUpVM) -> ViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.signUpVM = signUpVM
        return vc
    }
}

