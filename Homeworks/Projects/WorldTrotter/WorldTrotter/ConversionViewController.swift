//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by IvánMS on 27/05/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

import UIKit
class ConversionViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ConversionViewController loaded its view.")
        updateCelsiusLabel()
    }
    
    @IBOutlet weak var celsiusLabel: UILabel!
    var fahrenheitValue: Measurement<UnitTemperature>?{
        /*Mètodo que se llamará cada que cambie el valor de la variable.*/
        didSet {
            updateCelsiusLabel()
        }
    }
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    
    @IBOutlet var textField: UITextField!
    /*Método que se lanza cuando el cambia el textField */
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        /*Si el textField está vacío coloca la etiqueta "???", sino coloca el valor en el label.*/
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
    }
    /*Mètodo que se lanza para desaparecer el teclado. */
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
//            celsiusLabel.text = "\(celsiusValue.value)"
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        } else {
            celsiusLabel.text = "???"
        }
    }
    /*Le darà formato al nùmero, permitiendo sólo un decimal. */
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        if existingTextHasDecimalSeparator != nil,
            replacementTextHasDecimalSeparator != nil {
            return false
        } else {
            return true
        }
    }
    
}
