//
//  
//
//  Created by Kate McCarthy.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            if let marg = Drink.marg {
                Text("Hello, \(marg.strDrink)!")
            } else {
                Text("No drink found.")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
