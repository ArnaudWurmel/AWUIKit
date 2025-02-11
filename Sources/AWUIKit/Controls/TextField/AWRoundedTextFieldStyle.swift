//
//  AWRoundedTextFieldStyle.swift
//  AWUIKit
//
//  Created by Arnaud Wurmel on 11/02/2025.
//


import Foundation
import SwiftUI

struct AWRoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color.awCloud)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension TextFieldStyle where Self == AWRoundedTextFieldStyle {
    static var awRounded: AWRoundedTextFieldStyle {
        AWRoundedTextFieldStyle()
    }
}

#Preview {
    var text: String = ""
    
    TextField(
        "Email",
        text: Binding(
            get: { text },
            set: {
                text = $0
            }
        )
    )
    .textFieldStyle(.awRounded)
    .padding()
}
