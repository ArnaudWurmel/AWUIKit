//
//  AWPrimaryButtonStyle.swift
//  AWUIKit
//
//  Created by Arnaud Wurmel on 11/02/2025.
//

import SwiftUI

public struct AWPrimaryButtonStyle: ButtonStyle {
    private static let opacityVariation: CGFloat = 0.85
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(backgroundColor(isPressed: configuration.isPressed))
            .foregroundStyle(.white)
            .font(.headline)
            .clipShape(Capsule())
    }
    
    private func backgroundColor(isPressed: Bool) -> Color {
        Color.awGreen.opacity(
            isPressed ? Self.opacityVariation : 1
        )
    }
}

public extension ButtonStyle where Self == AWPrimaryButtonStyle {
    static var awPrimary: AWPrimaryButtonStyle {
        AWPrimaryButtonStyle()
    }
}

#Preview {
    Button("Primary button") {
        // Empty action for demo purposes
    }
    .buttonStyle(.awPrimary)
    .padding()
}
