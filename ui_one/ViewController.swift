//
//  ViewController.swift
//  ui_one
//
//  Created by mkv on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBAction func plus(_ sender: UIButton) {
        if sender.accessibilityLabel == "plus"{
                let counterString: String = textLabel.text!
                let newCount: Int! = Int(counterString)
                if (newCount + 1) <= 10 {
                    textLabel.text = String(newCount + 1)
                }
                else{
                    let alert = UIAlertController(title: "Внимание!", message: "Превышен лимит прибваления", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                          switch action.style{
                          case .default:
                                print("default")
                          case .cancel:
                                print("cancel")
                          case .destructive:
                                print("destructive")
                    }}))
                    self.present(alert, animated: true, completion: nil)
                }
            }
        
    }
    
    @IBAction func minus(_ sender: UIButton) {
        if sender.accessibilityLabel == "minus"{
            let counterString: String = textLabel.text!
            let newCount: Int! = Int(counterString)
            if (newCount - 1) >= -10 {
                textLabel.text = String(newCount - 1)
            }
            else{
                let alert = UIAlertController(title: "Внимание!", message: "Превышен лимит убавления", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                      switch action.style{
                      case .default:
                            print("default")
                      case .cancel:
                            print("cancel")
                      case .destructive:
                            print("destructive")
                }}))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
        if sender.accessibilityLabel == "reset"{
            textLabel.text = "0"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
