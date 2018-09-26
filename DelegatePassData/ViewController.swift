//
//  ViewController.swift
//  DelegatePassData
//
//  Created by Tandem on 22/05/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPerformSeguePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController{
            destination.delegate = self
        }
    }
    
}

extension ViewController: SecondVCDelegate{
    func finishPassing(string: String) {
        print("string : \(string)")
    }
    
    
}

