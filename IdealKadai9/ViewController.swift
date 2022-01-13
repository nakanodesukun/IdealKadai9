//
//  ViewController.swift
//  IdealKadai9
//
//  Created by 中野翔太 on 2022/01/13.
//

import UIKit
protocol GiveProtocol{
    func getName(name: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var resultName: UILabel!



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 早期リターンでコードの安全性を
        guard let idetifier = segue.identifier else { return }
        // switch文を使うことによって汎用性を高める
        switch idetifier {
        case "ShowSelection":
            guard let navigationController = segue.destination as? UINavigationController, let secontViewController = navigationController.topViewController as? SecondViewController
            else { return }
            secontViewController.giveProtocol = self
        default:
            break
        }
    }
    

}

extension ViewController: GiveProtocol {
    func getName(name: String) {
        resultName.text = name
    }


}
