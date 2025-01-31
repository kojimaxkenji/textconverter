import Foundation

@objc public class TextConverter: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
