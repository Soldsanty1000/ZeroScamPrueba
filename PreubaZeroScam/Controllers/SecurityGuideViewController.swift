//
//  SecurityGuideViewController.swift
//  PrototipoApp
//

import UIKit

class SecurityGuideViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!

    var tips: [String] = []
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecurityGuide loaded")
        titleLabel!.text = "Guia de Seguridad"
        loadTips()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    func loadTips() {
        let url = URL(string: "http://myapi.com/tips")!
        let data = try! Data(contentsOf: url)
        print("Tips data: \(data)")
    }
}
