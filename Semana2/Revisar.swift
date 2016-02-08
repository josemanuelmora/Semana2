//
//  Revisar.swift
//  Semana2
//
//  Created by Marian Mora on 07/02/16.
//  Copyright © 2016 Jose Mora. All rights reserved.
//

import UIKit

class Revisar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtNombre.text = vNombre
        txtTamano.text = vTamano
        txtMasa.text = vMasa
        txtQueso.text = vQueso
        llenaIng(vIngredientes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var vNombre = ""
    var vTamano = ""
    var vMasa = ""
    var vQueso = ""
    var vIngredientes: Set<String> = []
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTamano: UITextField!
    @IBOutlet weak var txtMasa: UITextField!
    @IBOutlet weak var txtQueso: UITextField!
    @IBOutlet weak var txtIngredientes: UITextView!
    
    @IBOutlet weak var txtMensaje: UITextField!
    
    func llenaIng(ingredientes: Set<String>){
        txtIngredientes.text=""
        var i = 1
        for ing in ingredientes {
            txtIngredientes.text = txtIngredientes.text + "\(i) - \(ing) \n"
            i++
        }
    }
    
    @IBAction func Confirmar(sender: AnyObject) {
        txtMensaje.text = "Tu orden será enviada a cocina"
    }
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            
            let sigPantalla = segue.destinationViewController as! Tamano
            
            sigPantalla.vNombre = vNombre
            sigPantalla.vTamano = vTamano
            sigPantalla.vMasa = vMasa
            sigPantalla.vQueso = vQueso
            sigPantalla.vIngredientes = vIngredientes
        }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
