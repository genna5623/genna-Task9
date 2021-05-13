//
//  ViewController.swift
//  kadai9
//
//  Created by 永野玄 on 2021/05/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func exitBySegue(segue:UIStoryboardSegue){
        guard let secondViewController = segue.source as? SecondViewController else
        {return}
        resultLabel.text = secondViewController.selectedPrefectureName
    }
    
    @IBAction func exitCancel(segue:UIStoryboardSegue) {

    }
}
