//
//  ViewController.swift
//  kadai9
//
//  Created by 永野玄 on 2021/05/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func exitBySegue(segue:UIStoryboardSegue){
        guard let result = segue.source as? SecondViewController else
        {return}
        resultLabel.text = result.kantouText
    }
    
    @IBAction func exitCancel(segue:UIStoryboardSegue) {

    }

}

