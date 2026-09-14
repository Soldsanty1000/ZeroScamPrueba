//
//  ProfileViewController.swift
//  PrototipoApp
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avatarIcon: UIImageView!
    @IBOutlet weak var editBadgeIcon: UIImageView!
    @IBOutlet weak var settingsIcon: UIImageView!

    @IBOutlet weak var tab1Button: UIButton!
    @IBOutlet weak var tab2Button: UIButton!
    @IBOutlet weak var misReportesCard1: UIView!
    @IBOutlet weak var misReportesCard2: UIView!
    @IBOutlet weak var guardadosCard1: UIView!
    @IBOutlet weak var guardadosCard2: UIView!

    private let activeTabColor = UIColor.white
    private let inactiveTabColor = UIColor(red: 0.5803921568999999, green: 0.63921568629999992, blue: 0.72156862750000006, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
