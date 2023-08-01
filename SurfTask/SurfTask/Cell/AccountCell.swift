//
//  AccountCell.swift
//  SurfTask
//
//  Created by Kalandarov Vakil on 01.08.2023.
//

import Foundation
import UIKit

final class AccountViewCell: UITableViewCell{
    
    static let shared = AccountViewCell()
    let identefire = "AccountCell"
    
    private lazy var avatarImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 55
        $0.clipsToBounds = true
        $0.image = UIImage(named: "Avatar")
        return $0
    }(UIImageView())
    
    private lazy var name: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Каландаров Вакиль \nФаикович"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.black)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private lazy var skillsAcoount: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Junior IOS-developer, опыт более 2-ух лет"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    private lazy var locationImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "Frame")
        return $0
    }(UIImageView())
    
    private lazy var locationLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Иваново"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    func createCell(){
        contentView.backgroundColor = .systemGray6
        contentView.addSubview(avatarImage)
        contentView.addSubview(name)
        contentView.addSubview(skillsAcoount)
        contentView.addSubview(locationLabel)
        contentView.addSubview(locationImage)
        
        createcConstraint()
    }
    
    private func createcConstraint() {
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50),
            avatarImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            avatarImage.widthAnchor.constraint(equalToConstant: 120),
            avatarImage.heightAnchor.constraint(equalToConstant: 120),
            
            name.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 15),
            name.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            name.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 90),
            name.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5),
            
            skillsAcoount.topAnchor.constraint(equalTo: name.bottomAnchor),
            skillsAcoount.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            locationLabel.topAnchor.constraint(equalTo: skillsAcoount.bottomAnchor,constant: 10),
            locationLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            locationImage.centerYAnchor.constraint(equalTo: locationLabel.centerYAnchor),
            locationImage.rightAnchor.constraint(equalTo: locationLabel.leftAnchor),
            locationImage.widthAnchor.constraint(equalToConstant: 16),
            locationImage.heightAnchor.constraint(equalToConstant: 16),
        ])
    }
}
