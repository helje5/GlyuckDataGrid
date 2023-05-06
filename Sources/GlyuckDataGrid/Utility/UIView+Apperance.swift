import UIKit

extension UIView {

    static func glyuck_appearanceWhenContained(in containerClass: UIAppearanceContainer.Type)
                -> Self
    {
        return appearance(whenContainedInInstancesOf: [ containerClass ])
    }
    static func glyuck_appearanceWhenContained(in containerClass: UIAppearanceContainer.Type,
                                               class2: UIAppearanceContainer.Type)
                -> Self
    {
        return appearance(whenContainedInInstancesOf: [ containerClass, class2 ])
    }
}