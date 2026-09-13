//
//  SearchViewController.swift
//  PrototipoApp
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var verifiedIcon: UIImageView!
    @IBOutlet weak var searchField: UITextField!

    var presetQuery: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        searchField.apply0fraudeStyle()
        searchField.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(xxx, animated: animated)
        if let presetQuery {
            searchField.text = presetQuery
            self.presetQuery = nil
        }
    }
}

extension SearchViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
