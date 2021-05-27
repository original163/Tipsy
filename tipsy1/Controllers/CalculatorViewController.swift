
import UIKit

class CalculatorViewController: UIViewController {
    
    var tip = 0.10
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPicButton: UIButton!
    @IBOutlet weak var tenPicButton: UIButton!
    @IBOutlet weak var twentyPicButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPicButton.isSelected = false
        tenPicButton.isSelected = false
        twentyPicButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        
        tip = buttonTitleAsANumber / 100
        
    }
    
    @IBAction func stepperValueChnged(_ sender: UIStepper) {
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
    
    
    
    
    
    
    
    
    
}

