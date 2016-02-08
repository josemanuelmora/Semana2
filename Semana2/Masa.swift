//
//  Masa.swift
//  Semana2
//
//  Created by Marian Mora on 07/02/16.
//  Copyright © 2016 Jose Mora. All rights reserved.
//

import UIKit

class Masa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtNombre.text = vNombre
        txtSelMasa.text = vMasa
        
        if !vMasa.isEmpty {
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
    
    var selMasa = false
    
    @IBOutlet weak var Siguiente: UIButton!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtSelMasa: UITextField!

    
    @IBAction func Delgada(sender: AnyObject) {
        vMasa = "Delgada"
        txtSelMasa.text = vMasa
        Siguiente.enabled = true
    }
    @IBAction func Gruesa(sender: AnyObject) {
        vMasa = "Gruesa"
        txtSelMasa.text = vMasa
        Siguiente.enabled = true
    }
    @IBAction func Crujiente(sender: AnyObject) {
        vMasa = "Crujiente"
        txtSelMasa.text = vMasa
        Siguiente.enabled = true
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
           let sigPantalla = segue.destinationViewController as! Queso
            
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
