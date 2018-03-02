//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Edited by Iván Mondragón Sotres on 01/03/18
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /* Se agregó el tipo @IBOutlet y se corrigió el nombre ya que tenía doble t y
     en el storyboard se tiene referenciado con una sola t. */
    @IBOutlet weak var outletText: UITextField!
    @IBOutlet weak var aoutletButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aoutletButton.setTitle("Touch me!", for: .normal)
        
    }
    /* Se agregó el tipo @IBAction y el parámetro de tipo UIButton */
    @IBAction func actionButton(_ sender: UIButton) {
        outletText.text = "You are a genius "
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*Se cuentan con cuatro objetos en el storyboard,
     entonces se eliminaron dos de ellas las cuales no se utilizan (Round Style Text File y Button)
     Se hizo más grande el botón para que mostrara la frase completa */
    
}

