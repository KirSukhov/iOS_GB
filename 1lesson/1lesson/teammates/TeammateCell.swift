//
//  TeammateCell.swift
//  1lesson
//
//  Created by Kir S on 21.04.2021.
//

import UIKit

class TeammateCell: UICollectionViewCell {
    

    @IBOutlet weak var portrait: UIImageView!
    @IBOutlet weak var lvlView: UIView!
    @IBOutlet weak var lvlLabel: UILabel!
    @IBOutlet weak var charView: UIView!
    @IBOutlet weak var likeButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lvlView.layer.shadowColor = UIColor.lightGray.cgColor
        lvlView.layer.shadowOpacity = 1.0
        lvlView.layer.shadowRadius = 5
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        lvlView.layer.cornerRadius = lvlView.bounds.height / 2
        
        portrait.layer.cornerRadius = portrait.bounds.height / 2
        
    }
    
    
}

class CharView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 8
        
    }
    
}

/*class TeammatesCollectionViewLayout: UICollectionViewLayout {
    
    var cacheAttributes = [IndexPath: UICollectionViewLayoutAttributes] ()
    let columnsCount = 2
    let cellHeight: CGFloat = 128
    private var totalCellsHeight: CGFloat = 0
    
    override func prepare() {
        super.prepare()
        
        cacheAttributes.removeAll()
        
        guard let collectionView = self.collectionView else { return }
        
        let itemsCount = collectionView.numberOfItems(inSection: 0)
        guard itemsCount > 0 else { return }
        
        let bigCellWidth = collectionView.bounds.width
        let smallCellWidth = collectionView.bounds.width / CGFloat(columnsCount)
        
        var lastY: CGFloat = 0
        var lastX: CGFloat = 0
        


        for index in 0..<itemsCount {
            let indexPath = IndexPath(item: index, section: 0)
            let attributtes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            
            let isBigCell = (((index + 1) % (columnsCount + 1)) == 0)
            
            if isBigCell {
                attributtes.frame = CGRect(x: 0, y: lastY, width: bigCellWidth, height: cellHeight)
                lastY += cellHeight
            } else {
                attributtes.frame = CGRect(x: lastX, y: lastY, width: smallCellWidth, height: cellHeight)
                
                let isLastColumn = (index + 2) % (columnsCount + 1) == 0 || index == (itemsCount - 1)
                
                if isLastColumn {
                    lastX = 0
                    lastY += cellHeight
                } else {
                    lastX += smallCellWidth
                }
            }
            cacheAttributes[indexPath] = attributtes
        }
        totalCellsHeight = lastY
    }
    
    
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return cacheAttributes.values.filter { attributes in rect.intersects(attributes.frame)}
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cacheAttributes[indexPath]
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: collectionView?.bounds.width ?? 0,
                     height: totalCellsHeight)
    }
}*/
