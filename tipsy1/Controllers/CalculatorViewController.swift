
import UIKit

class CalculatorViewController: UIViewController {
    
    var tip = 0.0
    var countOfPeople = 2.0
    var valueForOne = ""
    var bill = 0.0
    var tipString = ""
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPicButton: UIButton!
    @IBOutlet weak var tenPicButton: UIButton!
    @IBOutlet weak var twentyPicButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPicButton.isSelected = false
        tenPicButton.isSelected = false
        twentyPicButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        var buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tipString = buttonTitle
        
        tip = buttonTitleAsANumber / 100
        
    }
    
    @IBAction func stepperValueChnged(_ sender: UIStepper) {
        
        countOfPeople = sender.value
        let countOfPeopleString = String(Int(countOfPeople))
        splitNumberLabel.text = countOfPeopleString
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let billString = billTextField.text
        
        if billString != "" {
            
            bill = Double(billString!)!
            
            let result = (bill * tip) / countOfPeople
            let resultString =  String(format: "%.2f", result)
            valueForOne = resultString
            performSegue(withIdentifier: "goToResult", sender: self)
            
        } else {
            
            billTextField.placeholder = "no input"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.result = valueForOne
            destinationVC.countOfPeople = String(format: "%.f", countOfPeople)
            destinationVC.tip = tipString
        }
    }
    
    
}











