//
//  TestView.swift
//  TradeByBata
//
//  Created by Olga Yurchuk on 17.03.2023.
//

import SwiftUI

struct TestView: View {
    @State var text: String
    var body: some View {
        Text("Hello")
            .font(.custom("Montserrat-Regular.ttf", size: 13))
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(text: "")
    }
}
