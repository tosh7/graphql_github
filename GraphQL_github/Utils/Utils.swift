import Foundation

final class Utils {
    /// This is a bearer token for GitHub API access.
    /// This value is referenced by Secrets.plist.
    /// Check my README and generate Secrets.plist, otherwise app will be crashed with API request.
    static var bearerToken: String {
        return getValue("bearer_token") as! String
    }

    private static func getValue(_ key: String) -> Any? {
        // Get a value from plist file, if fails application stops immediately
        do {
            let url = Bundle.main.url(forResource:"Secrets", withExtension: "plist")!
            let data = try Data(contentsOf:url)
            let swiftDictionary = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as! [String:Any]
            return swiftDictionary[key]
        } catch {
            fatalError()
        }
    }
}
