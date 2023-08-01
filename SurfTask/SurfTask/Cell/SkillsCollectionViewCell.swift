//
//  SkillsCollectionViewCell.swift
//  SurfTask
//
//  Created by Kalandarov Vakil on 01.08.2023.
//

import Foundation
import UIKit

class SkillsCollectionViewCell: UICollectionViewCell {
    let identefire = "CollectionCell"
    
    private lazy var skillTitle: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitleColor(UIColor.black, for: .normal)
        $0.addTarget(self, action: #selector(itemAction), for: .touchUpInside)
        return $0
    }(UIButton())
    
    func dataTfansfer(text: String) {
        skillTitle.setTitle(text, for: .normal)
        createLabel()
        createcConstraint()
        //creteImage()
    }
    
    @objc func itemAction(){
    }
    
    func createLabel() {
        contentView.addSubview(skillTitle)
    }
    
    private func createcConstraint() {
        NSLayoutConstraint.activate([
            skillTitle.topAnchor.constraint(equalTo: contentView.topAnchor),
            skillTitle.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            skillTitle.rightAnchor.constraint(equalTo: contentView.rightAnchor),
        ])
    }
    
}
