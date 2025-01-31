import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(TextConverterPlugin)
public class TextConverterPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "TextConverterPlugin"
    public let jsName = "TextConverter"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "convert", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = TextConverter()

    @objc func convert(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.convert(value)
        ])
    }
}
