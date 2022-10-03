//
//  Data+.swift
//  CocktailAPITake2
//
//  Created by Kate McCarthy on 10/3/22.
//

import Foundation

extension Data {
    static func fromJSONFile(forName strDrink: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: strDrink, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print("Couldn't read JSON file.", error)
        }

        return nil
    }
}

