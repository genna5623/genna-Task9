//
//  SecondViewController.swift
//  kadai9
//
//  Created by 永野玄 on 2021/05/07.
//

import UIKit

class SecondViewController: UIViewController {
    private(set) var selectedPrefectureName:String?
   
    @IBOutlet private weak var tokyoButton: UIButton!
    
    @IBOutlet private weak var kanagawaButton: UIButton!
    
    @IBOutlet  private weak var saitamaButton: UIButton!
    @IBOutlet private weak var chibaButton: UIButton!

    enum Kantou {
        static let tokyo = "東京都"
        static let kanagawa = "神奈川県"
        static let saitama = "埼玉県"
        static let chiba = "千葉県"
    }

    @IBAction func tokyoButton(_ sender: Any) {
        select(prefectureName: Kantou.tokyo, sender: sender)
    }

    @IBAction func kanagawaButton(_ sender: Any) {
        select(prefectureName: Kantou.kanagawa, sender: sender)
    }
    
    @IBAction func saitamaButton(_ sender: Any) {
        select(prefectureName: Kantou.saitama, sender: sender)
    }
    
    @IBAction func chibaButton(_ sender: Any) {
        select(prefectureName: Kantou.chiba, sender: sender)
    }

    private func select(prefectureName: String, sender: Any) {
        selectedPrefectureName = prefectureName
        performSegue(withIdentifier: "changesegue", sender: sender)
    }
}
