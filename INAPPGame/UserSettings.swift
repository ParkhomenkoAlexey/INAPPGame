import UIKit

final class UserSettings {
    
    private enum SettingKey: String {
        case subscriptionDate
        
    }
    
    static var subscriptionDate: Date? {
        get {
            return UserDefaults.standard.object(forKey: SettingKey.subscriptionDate.rawValue) as? Date
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingKey.subscriptionDate.rawValue
            
            if let name = newValue {
                print("value: \(name) was added to key \(key)")
                defaults.set(name, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
}
