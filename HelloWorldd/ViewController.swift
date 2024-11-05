//
//  ViewController.swift
//  HelloWorldd
//
//  Created by Diana G on 17.10.2024.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        greetingLabel.isHidden = true
//        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonTapped() {
        
        greetingLabel.isHidden.toggle()
       
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.7121855617, green: 0.5339760184, blue: 0.8633659482, alpha: 1) // #colorLiteral()
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        return buttonConfiguration
    }
    
}




