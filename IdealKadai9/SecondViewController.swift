//
//  SecondViewController.swift
//  IdealKadai9
//
//  Created by 中野翔太 on 2022/01/13.
//

import UIKit

class SecondViewController: UIViewController {

    var giveProtocol: GiveProtocol?

    func prefectures(name: String) {
        giveProtocol?.getName(name: name)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func CancellButton(_ sender: Any) {
        prefectures(name: "未選択")
    }

    @IBAction func selectedDidTapButton(_ sender: UIButton) {
        var messageName: String{
            switch sender.tag {
            case 0: return "東京都"
            case 1: return "神奈川県"
            case 2: return "埼玉県"
            case 3: return "千葉県"
            default: return "予期せぬエラー"
            }
        }
        prefectures(name: messageName)
    }

    


}
