//
//  Tamano.swift
//  Semana2
//
//  Created by Marian Mora on 07/02/16.
//  Copyright © 2016 Jose Mora. All rights reserved.
//

import UIKit

class Tamano: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtNombre.text = vNombre
        txtSelTamano.text = vTamano
        
        if !vTamano.isEmpty {
            Siguiente.enabled = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var vNombre = ""
    var vTamano = ""
    var vMasa=""
    var vQueso = ""
    var vIngredientes: Set<String> = []
    
    var selTamano = false
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtSelTamano: UITextField!
    @IBOutlet weak var Siguiente: UIButton!
    
    
    @IBAction func chica(sender: AnyObject){
        vTamano = "Chica"
        txtSelTamano.text = vTamano
        Siguiente.enabled = true
    }
    
    @IBAction func mediana(sender: AnyObject) {
        vTamano = "Mediana"
        txtSelTamano.text = vTamano
        Siguiente.enabled = true
    }
    
    @IBAction func grande(sender: AnyObject) {
        vTamano = "Grande"
        txtSelTamano.text = vTamano
        Siguiente.enabled = true
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

            let sigPantalla = segue.destinationViewController as! Masa
        
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
