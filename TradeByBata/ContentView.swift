//
//  ContentView.swift
//  TradeByBata
//
//  Created by Olga Yurchuk on 14.03.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        SignInView()
    }
    

    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

