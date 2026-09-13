//
//  ReportViewController.swift
//  PrototipoApp
//

import UIKit

class ReportViewController: UIViewController {

    @IBOutlet var whoButtons: [UIButton]!
    @IBOutlet var fraudTypeButtons: [UIButton]!
    @IBOutlet weak var urlField: UITextField!
    @IBOutlet weak var customFraudTypeField: UITextField!
    @IBOutlet weak var otherPersonNameField: UITextField!
    @IBOutlet weak var otherPersonContactField: UITextField!
    @IBOutlet weak var otherPersonCityField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var anonymousSwitch: UISwitch!
    @IBOutlet weak var evidenceImageView: UIImageView!
    @IBOutlet weak var evidencePlaceholderStack: UIStackView!
    @IBOutlet weak var evidenceRemoveButton: UIButton!

    private let card = UIColor(red: 18/255, green: 32/255, blue: 74/255, alpha: 1)
    private let selectedBg = UIColor(red: 26/255, green: 42/255, blue: 90/255, alpha: 1)
    private let border = UIColor(red: 42/255, green: 55/255, blue: 104/255, alpha: 1)
    private let orange = UIColor(red: 245/255, green: 166/255, blue: 35/255, alpha: 1)

    private let detailsPlaceholder = "Describe cómo ocurrió el intento de fraude..."
    private let placeholderTextColor = UIColor(red: 156/255, green: 163/255, blue: 175/255, alpha: 1)
    private let realTextColor = UIColor(red: 219/255, green: 225/255, blue: 255/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        urlField.apply0fraudeStyle()
        customFraudTypeField.apply0fraudeStyle()
        otherPersonNameField.apply0fraudeStyle()
        otherPersonContactField.apply0fraudeStyle()
        otherPersonCityField.apply0fraudeStyle()
        for field in [urlField, customFraudTypeField, otherPersonNameField, otherPersonContactField, otherPersonCityField] {
            field?.delegate = self
        }
        descriptionTextView.delegate = self
        select(whoButtons.first, in: whoButtons)
        select(fraudTypeButtons.first, in: fraudTypeButtons)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(xxx, animated: animated)
    }

    @IBAction func whoTapped(_ sender: UIButton) {
        select(sender, in: whoButtons)
    }

    @IBAction func fraudTypeTapped(_ sender: UIButton) {
        select(sender, in: fraudTypeButtons)
    }

    private func select(_ chosen: UIButton?, in group: [UIButton]) {
        for button in group {
            let isSelected = button === chosen
            button.backgroundColor = isSelected ? selectedBg : card
            button.layer.borderColor = (isSelected ? orange : border).cgColor
        }
    }

    @IBAction func anonymousToggled(_ sender: UISwitch) {
    }

    @IBAction func addEvidenceTapped(_ sender: Any) {
        // TODO: agregar foto de evidencia
    }

    @IBAction func removeEvidenceTapped(_ sender: Any) {
        // TODO: quitar foto de evidencia
    }

    @IBAction func submitTapped(_ sender: Any) {
        // TODO: enviar reporte
    }
}

extension ReportViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension ReportViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        guard textView == descriptionTextView, textView.text == detailsPlaceholder else { return }
        textView.text = ""
        textView.textColor = realTextColor
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        guard textView == descriptionTextView, textView.text.isEmpty else { return }
        textView.text = detailsPlaceholder
        textView.textColor = placeholderTextColor
    }
}
