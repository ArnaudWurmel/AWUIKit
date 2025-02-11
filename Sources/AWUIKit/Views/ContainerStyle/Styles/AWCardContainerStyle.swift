//
//  AWCardContainerStyle.swift
//  AWUIKit
//
//  Created by Arnaud Wurmel on 11/02/2025.
//

import SwiftUI

public struct AWCardContainerStyle: AWContainerStyle {
    public func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.awCloud)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

public extension AWContainerStyle where Self == AWCardContainerStyle {
    static var cardStyle: AWCardContainerStyle {
        AWCardContainerStyle()
    }
}

#Preview {
    VStack(alignment: .leading) {
        Text("Hello from a card")
            .font(.headline)
        
        Text("Very important message inside a card")
    }
    .containerStyle(.cardStyle)
}
