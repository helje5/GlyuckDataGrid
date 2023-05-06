import UIKit

@objc protocol UILabelAppearance: NSObjectProtocol {

    @objc var appearanceFont: UIFont? { get set }
    @objc var appearanceMinimumScaleFactor: CGFloat { get set }
    @objc var appearanceAdjustsFontSizeToFitWidth: ObjCBool { get set }
    @objc var appearanceNumberOfLines: Int { get set }
}
