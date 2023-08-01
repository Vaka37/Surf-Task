//
//  ShowAlert.swift
//  SurfTask
//
//  Created by Kalandarov Vakil on 01.08.2023.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "Добавление навыка", message: "Введите названия навыка которым вы владеете", preferredStyle: .alert)
            alert.addTextField(){textField in
            }
            let action = UIAlertAction(title: "Добавить", style: .default) { _ in
                let textField = alert.textFields![0] as UITextField
                SkillsCell().addSkills(skils: textField.text ?? "")
                SkillsCollectionView().collectionView.reloadData()
            }
            alert.addAction(action)
            let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
}

