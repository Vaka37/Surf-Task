//
//  SrillsCell.swift
//  SurfTask
//
//  Created by Kalandarov Vakil on 01.08.2023.
//

import Foundation
import UIKit

final class SkillsCell: UITableViewCell{
    let identefire = "SkillsCell"
    
    private lazy  var skillsCollectionView = SkillsCollectionView()
    private lazy var editSkillls = false
    var arraySkils = ["Uikit" , "MVC", "swiftui","mvp" , "GitHib", "SVN","Gitlab"]
    var handler: (()->())?
    
    private var iconButtonPen = UIImage(named: "penIcon")
    private var iconButtonDone = UIImage(named: "Frame-2")
    private lazy var skillLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Мои Навыки"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
        return $0
    }(UILabel())
    
    private lazy var editSkillButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        $0.setImage(iconButtonPen, for: .normal)
        return $0
    }(UIButton())
    
    override var isSelected: Bool {
        didSet {
            contentView.backgroundColor = isSelected ? .white : .white
        }
    }
    
    func createCell(){
        contentView.addSubview(skillLabel)
        contentView.addSubview(editSkillButton)
        skillsCollectionView.view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(skillsCollectionView.view)
        createcConstraint()
    }
    
    func addSkills(skils: String){
        arraySkils.append(skils)
    }
    
    @objc private func buttonAction(){
        handler?()
        editSkillls.toggle()
        if editSkillls{
            editSkillButton.setImage(iconButtonPen, for: .normal)
        }else{
            editSkillButton.setImage(iconButtonDone, for: .normal)
        }
    }
    
    private func createcConstraint() {
        NSLayoutConstraint.activate([
            skillLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            skillLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            
            editSkillButton.centerYAnchor.constraint(equalTo: skillLabel.centerYAnchor),
            editSkillButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            editSkillButton.widthAnchor.constraint(equalToConstant: 30),
            editSkillButton.heightAnchor.constraint(equalToConstant: 30),
            
            skillsCollectionView.view.topAnchor.constraint(equalTo: editSkillButton.bottomAnchor),
            skillsCollectionView.view.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            skillsCollectionView.view.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: -16),
        ])
    }
}


