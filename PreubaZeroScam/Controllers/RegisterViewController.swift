//
//  RegisterViewController.swift
//  PreubaZeroScam
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        [usernameField, emailField, passwordField, confirmPasswordField].forEach {
            $0?.applyOfraudeStyle()
        }
        hideKeyboardOnTap()
    }
}
