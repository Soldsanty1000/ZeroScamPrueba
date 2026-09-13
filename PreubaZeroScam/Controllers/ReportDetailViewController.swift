//
//  ReportDetailViewController.swift
//  PrototipoApp
//

import UIKit

class ReportDetailViewController: UIViewController {

    @IBOutlet weak var commentField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        commentField.apply0fraudeStyle()
        commentField.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func meTooTapped(_ sender: Any) {

    }

    @IBAction func saveTapped(_ sender: Any) {
        // TODO: agregar a Reportes Guardados
    }

    @IBAction func shareTapped(_ sender: Any) {
        // TODO: compartir reporte
    }

    @IBAction func postCommentTapped(_ sender: Any) {
        // TODO: publicar comentario
    }
}

extension ReportDetailViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
