//
//  ViewController.swift
//  ui_one
//
//  Created by mkv on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    
    @IBAction func plus(_ sender: UIButton) {
                let counterString: String = textLabel.text!
                let newCount: Int! = Int(counterString)
                if (newCount + 1) <= 10 {
                    textLabel.text = String(newCount + 1)
                    plus.isEnabled = true
                    minus.isEnabled = true
                }
                else{
                    plus.isEnabled = false
                    let alert = UIAlertController(title: "Внимание!", message: "Превышен лимит прибваления", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
    }
    
    
    
    @IBAction func minus(_ sender: UIButton) {
            let counterString: String = textLabel.text!
            let newCount: Int! = Int(counterString)
            if (newCount - 1) >= -10 {
                textLabel.text = String(newCount - 1)
                minus.isEnabled = true
                plus.isEnabled = true
            }
            else{
                minus.isEnabled = false
                let alert = UIAlertController(title: "Внимание!", message: "Превышен лимит убавления", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true, completion: nil)
            }
    }
    
    @IBAction func reset(_ sender: UIButton) {
            textLabel.text = "0"
            plus.isEnabled = true
            minus.isEnabled = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
