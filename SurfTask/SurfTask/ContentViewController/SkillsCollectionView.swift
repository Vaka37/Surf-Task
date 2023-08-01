//
//  SkillsCollectionView.swift
//  SurfTask
//
//  Created by Kalandarov Vakil on 01.08.2023.
//

import Foundation
import UIKit

final class SkillsCollectionView: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    var collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
    var frame: CGRect?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCollectionView()
    }
    
    private func createCollectionView(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 15, right: 16)
        layout.itemSize = CGSize(width: 90, height: 45)
        collectionView = UICollectionView(frame: frame ?? self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(SkillsCollectionViewCell.self, forCellWithReuseIdentifier: SkillsCollectionViewCell().identefire)
        collectionView.backgroundColor = .clear
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SkillsCell().arraySkils.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SkillsCollectionViewCell().identefire, for: indexPath) as? SkillsCollectionViewCell {
            cell.backgroundColor = .systemGray2
            cell.layer.cornerRadius = 15
            let item = SkillsCell().arraySkils[indexPath.row]
            cell.dataTfansfer(text: item)
            return cell
        }
        return UICollectionViewCell()
    }
}

