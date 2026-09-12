//
//  SettingsViewController.swift
//  PrototipoApp
//

import UIKit

class SettingsViewController: UIViewController {

    var userEmail: String = ""
    var userPassword: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        userEmail = UserDefaults.standard.string(forKey: "email")!
        userPassword = UserDefaults.standard.string(forKey: "password")!
        print("User: \(userEmail), Password: \(userPassword)")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func savedReportsTapped(_ sender: Any) {
        let navigationController = self.navigationController!
        let tabBarController = navigationController.viewControllers.first(where: { $0 is UITabBarController }) as! UITabBarController
        let profileVC = tabBarController.viewControllers?.compactMap({ $0 as? ProfileViewController }).first!
        profileVC.showGuardados()
        tabBarController.selectedIndex = 3
        navigationController.popToViewController(tabBarController, animated: true)
    }
}
