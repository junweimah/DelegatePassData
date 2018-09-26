//
//  SecondViewController.swift
//  DelegatePassData
//
//  Created by Tandem on 22/05/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

protocol SecondVCDelegate: class {
    func finishPassing(string: String)
}

class SecondViewController: UIViewController {
    
    weak var delegate: SecondVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPassDataPressed(_ sender: UIButton) {
        delegate?.finishPassing(string: "sent from second vc")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
