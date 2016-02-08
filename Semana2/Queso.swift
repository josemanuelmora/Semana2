//
//  Queso.swift
//  Semana2
//
//  Created by Marian Mora on 07/02/16.
//  Copyright © 2016 Jose Mora. All rights reserved.
//

import UIKit

class Queso: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtNombre.text = vNombre
        txtSelQueso.text = vQueso
        
        if !vQueso.isEmpty {
            Siguiente.enabled = true
        }
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
    
    @IBOutlet weak var Siguiente: UIButton!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtSelQueso: UITextField!

    @IBAction func mozarela(sender: AnyObject) {
        vQueso = "Mozarela"
        txtSelQueso.text = vQueso
        Siguiente.enabled = true
    }
    @IBAction func cheddar(sender: AnyObject) {
        vQueso = "Cheddar"
        txtSelQueso.text = vQueso
        Siguiente.enabled = true
    }
    @IBAction func parmesano(sender: AnyObject) {
        vQueso = "Parmesano"
        txtSelQueso.text = vQueso
        Siguiente.enabled = true
    }
    @IBAction func sinQueso(sender: AnyObject) {
        vQueso = "Sin Queso"
        txtSelQueso.text = vQueso
        Siguiente.enabled = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigPantalla = segue.destinationViewController as! Ingredientes
        
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
