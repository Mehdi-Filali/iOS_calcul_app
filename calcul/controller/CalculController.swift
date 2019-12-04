//
//  CalculController.swift
//  calcul
//
//  Created by Mehdi Aniq Filali on 04/12/2019.
//  Copyright © 2019 Mehdi Aniq Filali. All rights reserved.
//

import UIKit

class CalculController: UIViewController {

    @IBOutlet weak var labelAppName: UILabel!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var slideBar: UISlider!
    private var number : String! = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelAppName.text = "Calcul App"
        self.labelResult.text = "0"
        self.number = "0"

    }
    
    private func calcul(){
        self.labelResult.text = "\(self.number!) * \(Int(self.slideBar.value)) = \(Int(self.number!)! * Int(self.slideBar.value))"
    }
    

    @IBAction func onClickNumber(_ sender: UIButton) {
        
        if let nbr = self.number{
            let nbrCurrent = sender.titleLabel!.text!
            
            if nbr == "0" {
                self.number = nbrCurrent
            }else{
                self.number = "\(nbr)\(nbrCurrent)"
            }
            
        }
        
        self.calcul()
    }
    
    @IBAction func onSlide(_ sender: UISlider) {
        
        self.calcul()
    }
    
    @IBAction func onClickRemoveLast(_ sender: UIButton) {
        
        self.number = String(self.number.dropLast())
        
        if self.number == "" {
            self.number = "0"
        }
        
        self.calcul()
    }
    
    @IBAction func onClickClear(_ sender: UIButton) {
        
        self.number = "0"
        self.slideBar.value = 0
        self.calcul()
    }
    
    
}
