//
//  Fonts.swift
//  TradeByBata
//
//  Created by Olga Yurchuk on 17.03.2023.
//

import SwiftUI

extension Font {
    static var body = Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .body).pointSize)
    static var footnote: Font {
           return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .footnote).pointSize)
       }
    

}


func Text(_ content: any StringProtocol) -> SwiftUI.Text {
    .init(content).font(.body)
}

func TextField(_ titleKey: LocalizedStringKey, text: Binding<String>, axis: Axis = .horizontal) -> some View {
    SwiftUI.TextField(titleKey, text: text, axis: axis).font(.body)
}




struct FontSizeModifier: ViewModifier {
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(.custom("Montserrat-regular", size: size))
    }
}

extension Text {
    
    func fontSize(size: CGFloat) -> some View {
        ModifiedContent(
            content: self,
            modifier: FontSizeModifier(size: size)
        )
    }
}


