//
//  AboutCell.swift
//  SurfTask
//
//  Created by Kalandarov Vakil on 01.08.2023.
//

import Foundation
import UIKit

final class AboutCell: UITableViewCell{
    
    let identefire = "AboutCell"
    
    private lazy var aboutTitle: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "О Себе"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
        return $0
    }(UILabel())
    
    
    func createCell(){
        contentView.addSubview(aboutTitle)
        createcConstraint()
    }
    
    override var isSelected: Bool {
        didSet {
            contentView.backgroundColor = isSelected ? .white : .white
        }
    }
    
    private func createcConstraint() {
        NSLayoutConstraint.activate([
            
            aboutTitle.topAnchor.constraint(equalTo: contentView.topAnchor),
            aboutTitle.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
        ])
    }
    
}
