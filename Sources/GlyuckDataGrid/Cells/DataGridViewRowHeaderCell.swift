//
//  DataGridViewRowHeaderCell.swift
//  Pods
//
//  Created by Vladimir Lyukov on 20/11/15.
//
//

import UIKit


open class DataGridViewRowHeaderCell: DataGridViewBaseHeaderCell {
    private static let __once = {
        let appearance = DataGridViewRowHeaderCell.appearance()
        appearance.backgroundColor = UIColor.white
        appearance.sortedBackgroundColor = UIColor(white: 220.0/255.0, alpha: 1)
        appearance.sortAscSuffix = " →"
        appearance.sortDescSuffix = " ←"
        appearance.textLabelInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        appearance.borderRightColor = UIColor(white: 0.73, alpha: 1)
        appearance.borderRightWidth = 1 / UIScreen.main.scale
        
        if let labelAppearance = UILabel.appearance(whenContainedInInstancesOf: [DataGridViewRowHeaderCell.self]) as? UILabelAppearance {
            if #available(iOS 8.2, *) {
              labelAppearance.appearanceFont = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
            } else {
                labelAppearance.appearanceFont = UIFont(name: "HelveticaNeue", size: 14)
            }
            labelAppearance.appearanceAdjustsFontSizeToFitWidth = true
            labelAppearance.appearanceMinimumScaleFactor = 0.5
            labelAppearance.appearanceNumberOfLines = 0
        }
        return appearance
    }()

    override public init(frame: CGRect) {
        _ = DataGridViewRowHeaderCell.__once
        super.init(frame: frame)
    }

    public required init?(coder aDecoder: NSCoder) {
        _ = DataGridViewRowHeaderCell.__once
        super.init(coder: aDecoder)
    }
}
