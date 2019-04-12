//
//  ViewController.swift
//  ConversionCalculatorUI
//
//  Created by Davin Heilich on 4/8/19.
//  Copyright © 2019 Davin Heilich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        converters.append(ftoc)
        converters.append(ctof)
        converters.append(mtok)
        converters.append(ktom)
    }
    var converters: [converter] = []
    
    var ftoc: converter = converter(label:"Fahrenheit to Celcius", input:"°F",output:"°C")
    var ctof: converter = converter(label:"Celcius to Fahrenheit",input:"°C",output:"°F")
    var mtok: converter = converter(label:"Miles to Kilometers",input:"mi",output:"km")
    var ktom: converter = converter(label:"Kilometers to Miles",input:"km",output:"mi")
    
    
    @IBAction func converterButton(_ sender: Any) {
        let optionmenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        optionmenu.addAction(UIAlertAction(title: ftoc.label, style: .default, handler: { alert in
            
            self.outputDisplay.text = self.ftoc.output
            self.inputDisplay.text = self.ftoc.input
            
        }))
        optionmenu.addAction(UIAlertAction(title: ctof.label, style: .default, handler: { alert in
            
            self.outputDisplay.text = self.ctof.output
            self.inputDisplay.text = self.ctof.input
            
        }))
        optionmenu.addAction(UIAlertAction(title: mtok.label, style: .default, handler: { alert in
            
            self.outputDisplay.text = self.mtok.output
            self.inputDisplay.text = self.mtok.input
            
        }))
        optionmenu.addAction(UIAlertAction(title: ktom.label, style: .default, handler: { alert in
            
            self.outputDisplay.text = self.ktom.output
            self.inputDisplay.text = self.ktom.input
            
        }))
        
        self.present(optionmenu, animated: true, completion: nil)
    }
    
}

