import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var heightTextBox: UITextField!
    @IBOutlet weak var weightTextBox: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calcualateButtonPressed(_ sender: UIButton) {
        let heightInput = heightTextBox.text!
        let weightInput = weightTextBox.text!
        
        let height = Double(heightInput)!
        let weight = Double(weightInput)!
        
        print("Height is: \(height)")
        print("Weight is: \(weight)")
        
        let bmi = weight/(height * height)
        print("Your BMI is: \(bmi)")
        
        var status = ""
        
        if(bmi < 18.5){
            status = "underweight"
        }
        else if(bmi >= 18.5 && bmi <= 24.9){
            status = "normal"
        }
        else if(bmi >= 25 && bmi <= 29.9){
            status = "overweight"
        }
        else if(bmi >= 30){
            status = "obese"
        }
        print("Your status is: \(status)")
        resultLabel.text = "You are \(status)"

    }
}

