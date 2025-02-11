//
//  View+AWContainerStyle.swift
//  AWUIKit
//
//  Created by Arnaud Wurmel on 11/02/2025.
//

import SwiftUI

public extension View {
    /// Apply a container style to the view
    func containerStyle<C: AWContainerStyle>(_ style: C) -> some View {
        modifier(style)
    }
}
