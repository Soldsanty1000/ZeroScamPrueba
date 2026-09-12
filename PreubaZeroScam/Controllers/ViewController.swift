//
//  ViewController.swift
//  PrototipoApp
//
//  Created by Alejandro on 31/08/26.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    private let demoEmail = "admin"
    private let demoPassword = "admin"

    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.applyOfraudeStyle()
        passwordField.applyOfraudeStyle()
        hideKeyboardOnTap()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func createAccountTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func loginSubmitTapped(_ sender: UIButton) {
        let email = emailField.text!
        let password = passwordField.text!
        print("Attempting login with: \(email) / \(password)")

        let isCorrect = email == demoEmail && password == demoPassword
        errorLabel.isHidden = isCorrect

        guard isCorrect else { return }

        let tabBarController = storyboard!.instantiateViewController(withIdentifier: "MainTabBarController")
        navigationController!.pushViewController(tabBarController, animated: true)
    }
}
