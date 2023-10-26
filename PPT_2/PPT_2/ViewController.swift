//
//  ViewController.swift
//  PPT_2
//
//  Created by ITESM Campus Puebla on 25/10/23.
//

import UIKit

class ViewController: UIViewController {
    // Creacion de las variables para la eleccion de la maquina y del usuario
    var usuario = 0
    var maquina = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Funcion a ejecutar del boton de piedra
    // La eleccion de la maquina es de forma aleatoria de 1 a 3, haciendo referencia a piedra, papel o tijeras, respectivamente
    @IBAction func piedra(_ sender: UIButton) {
        usuario = 1
        maquina = Int.random(in: 1..<4)
        
        if maquina == 1 {
            showAlert(message: "Maquina escogio piedra. \n Empate.")
        }
        else if maquina == 2 {
            showAlert(message: "Maquina escogio papel. \n Perdiste.")
        }
        else if maquina == 3 {
            showAlert(message: "Maquina escogio tijeras. \n Ganaste.")
        }
    }
    
    // Funcion a ejecutar del boton de papel
    // La eleccion de la maquina es de forma aleatoria de 1 a 3, haciendo referencia a piedra, papel o tijeras, respectivamente
    @IBAction func papel(_ sender: UIButton) {
        usuario = 2
        maquina = Int.random(in: 1..<4)
        if maquina == 1 {
            showAlert(message: "Maquina escogio piedra. \n Ganaste.")
        }
        else if maquina == 2 {
            showAlert(message: "Maquina escogio papel. \n Empate.")
        }
        else if maquina == 3 {
            showAlert(message: "Maquina escogio tijeras. \n Perdiste.")
        }
    }
    
    // Funcion a ejecutar del boton de tijeras
    // La eleccion de la maquina es de forma aleatoria de 1 a 3, haciendo referencia a piedra, papel o tijeras, respectivamente
    @IBAction func tijera(_ sender: UIButton) {
        usuario = 3
        maquina = Int.random(in: 1..<4)
        if maquina == 1 {
            showAlert(message: "Maquina escogio piedra. \n Perdiste.")
        }
        else if maquina == 2 {
            showAlert(message: "Maquina escogio papel. \n Ganaste.")
        }
        else if maquina == 3 {
            showAlert(message: "Maquina escogio tijeras. \n Empate.")
        }
    }
    
    // Funcion para mostrar las alertas con el resultado de la partida
    func showAlert(message: String){
        let alert = UIAlertController(title: "Resultado", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
        
    }
    
    
}

