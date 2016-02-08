//
//  Ingredientes.swift
//  Semana2
//
//  Created by Marian Mora on 07/02/16.
//  Copyright © 2016 Jose Mora. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtNombre.text = vNombre
        llenaIngR(vIngredientes)
        
        if !vIngredientes.isEmpty {
            Siguiente.enabled = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func llenaIngR(ingredientes: Set<String>){
        txtIngredientes.text=""
        var i = 1
        for ing in ingredientes {
            txtIngredientes.text = txtIngredientes.text + "\(i) - \(ing) \n"
            i++
        }
        totIng = i-1
        txtMensaje.text = "Llevas \(totIng) de 5 Ingredientes"
    }
    
    var vNombre = ""
    var vTamano = ""
    var vMasa = ""
    var vQueso = ""
    var vIngredientes: Set<String> = []
    
    var totIng = 0
    
    @IBOutlet weak var txtIngredientes: UITextView!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtMensaje: UITextField!
    @IBOutlet weak var Siguiente: UIButton!
    
    func llenaIng(nombre: String){
        if vIngredientes.contains(nombre)
        {
            vIngredientes.remove(nombre)
            totIng--
        }
        else
        {
            if totIng < 5 {
                vIngredientes.insert(nombre)
                totIng++
            }
            else {
                txtMensaje.text = "Máximo 5 Ingredientes"
            }
        }
        txtMensaje.text = "Llevas \(totIng) de 5 Ingredientes"
        
        txtIngredientes.text=""
        var i = 1
        for ing in vIngredientes {
            txtIngredientes.text = txtIngredientes.text + "\(i) - \(ing) \n"
            i++
        }
        
        if totIng > 0 {
            Siguiente.enabled = true
        }
        else
        {
            Siguiente.enabled = false
        }
    }
    
    @IBAction func jamon(sender: AnyObject) {
        llenaIng("Jamón")
    }
    
    @IBAction func pepperoni(sender: AnyObject) {
        llenaIng("Pepperoni")
    }

    @IBAction func pavo(sender: AnyObject) {
        llenaIng("Pavo")
    }
    
    @IBAction func salchicha(sender: AnyObject) {
        llenaIng("Salchicha")
    }
    
    @IBAction func aceitunas(sender: AnyObject) {
        llenaIng("Aceitunas")
    }
    
    @IBAction func cebolla(sender: AnyObject) {
        llenaIng("Cebolla")
    }
    
    @IBAction func pimiento(sender: AnyObject) {
        llenaIng("Pimiento")
    }
    
    @IBAction func piña(sender: AnyObject) {
        llenaIng("Piña")
    }
    
    @IBAction func anchoas(sender: AnyObject) {
        llenaIng("Anchoas")
    }
    
    @IBAction func champiñones(sender: AnyObject) {
        llenaIng("Champiñones")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigPantalla = segue.destinationViewController as! Revisar
        
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
