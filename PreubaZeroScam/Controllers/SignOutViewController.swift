//
//  SignOutViewController.swift
//  PrototipoApp
//

import UIKit

class SignOutViewController: UIViewController {

    @IBOutlet weak var iconImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        iconImageView!.image = UIImage(named: "signout")!
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func confirmTapped(_ sender: Any) {
        print("User signed out")
        navigationController!.popToRootViewController(animated: true)
    }

    @IBAction func cancelTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
