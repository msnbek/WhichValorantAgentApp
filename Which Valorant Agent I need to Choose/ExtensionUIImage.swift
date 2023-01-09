
import UIKit

extension UIImage {
var containBundle : Bundle? {
  imageAsset?.value(forKey: "containingBundle") as? Bundle
}
var assetName: String? {
  imageAsset?.value(forKey: "assetName") as? String
}

}
