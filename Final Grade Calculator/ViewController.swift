//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by Malachai Jacobs on 10/7/21.
//

import UIKit

@IBDesignable extension UIButton
{
//from stackoverflow
    @IBInspectable var borderWidth: CGFloat
    {
        set{
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController
{

    @IBOutlet weak var desiredGrade: UITextField!
    
    @IBOutlet weak var currentGrade: UITextField!
    
    @IBOutlet weak var weightOfFinal: UITextField!
    
    var desired = ""
    
    var current = ""
    
    var weight = ""
    
   var myInt1 = 0
    var myInt2 = 0
    var myInt3 = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var finalLabel: UILabel!
    //caculate button
    @IBAction func button(_ sender: Any)
    {
        desired = desiredGrade.text ?? "0"
        current = currentGrade.text ?? "0"
        weight = weightOfFinal.text ?? "0"
        myInt2 = Int(desired) ?? 0
        myInt1 = Int(current) ?? 0
        myInt3 = Int(weight) ?? 0
        var I = Float(myInt3)
        var x = 100 - I
        var c = Float(x/100)
        var og = Float(myInt2)
        var y = Float(myInt3) / 100
        var u = Float(myInt1)
        
        var z = (og - u  * (1 - y))/y
        finalLabel.text = "your final grade is \(z) "
        
        
    }
    
}




