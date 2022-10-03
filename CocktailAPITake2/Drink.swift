

import Foundation

struct Drink: Codable {
    var strDrink: String
//    var height: S?
//    var mass: Int?

    static var marg: Drink? {
        Drink.fromJSON(named: "cocktail")
    }

    static func fromJSON(named strDrink: String) -> Drink? {
        if let data = Data.fromJSONFile(forName: strDrink) {
            let decoder = JSONDecoder()
            do {
                let marg = try decoder.decode(Drink.self, from: data)
                return marg
            } catch {
                print("Could not make drink from data.", error.localizedDescription)
            }
        }
        return nil
    }
}
