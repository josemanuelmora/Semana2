//
//  ViewController.swift
//  Semana2
//
//  Created by Marian Mora on 07/02/16.
//  Copyright © 2016 Jose Mora. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nombre.delegate = self
        nombre.text = vNombre
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var vNombre = ""
    
    @IBOutlet weak var Iniciar: UIButton!
    @IBOutlet weak var nombre: UITextField!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        vNombre = nombre.text!
        
        let vistaResumen = segue.destinationViewController as! Tamano
        vistaResumen.vNombre = vNombre
    }
    
    //Funcion para desaparecer el teclado
    @IBAction func textFieldDone(sender: UITextField)
    {
        if !nombre.text!.isEmpty {
            Iniciar.enabled = true
        }
        
        sender.resignFirstResponder()  //Esta linea oculta el teclado
    }
    
    //Funcion que quita el teclado con clik en la interfaz
    @IBAction func backgroundTap(sender: UIControl)
    {
        nombre.resignFirstResponder()
    }
}

