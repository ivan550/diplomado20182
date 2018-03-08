//
//  ViewController.swift
//  SimpleProfile
//
//  Created by d182_Ivan_M on 02/03/18.
//  Copyright © 2018 ivanMS. All rights reserved.


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var btnView: UIButton!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var textArea: UITextView!
    @IBOutlet weak var mainTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /* Manda llamar el color que se agregó en assets por su nombre */
    func generateColor(_ color: String) -> UIColor{
        return UIColor(named: color)!
    }

    @IBAction func random(_ sender: UIButton) {
        var colors = ["a","b","c","d","e","f","g"]
        /* Se agregó la extensión para poder barajear el arreglo */
        colors.shuffle()
        
        /* Cambia el color después de barajear el arreglo */
        btn.titleLabel?.textColor = generateColor(colors[0])
        btnView.backgroundColor = generateColor(colors[1])
        btnReset.backgroundColor = generateColor(colors[2])
        textArea.backgroundColor = generateColor(colors[3])
        textArea.textColor = generateColor(colors[4])
        mainTitle.textColor = generateColor(colors[5])
        self.view.backgroundColor = generateColor(colors[6])
        print(colors)
    }
    
  
}

