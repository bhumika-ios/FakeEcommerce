//
//  ProfileImageView.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import SwiftUI

/// Styling to the button in the profil view
struct ProfilButtonMenu: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.headline)
            .padding()
            .background(configuration.isPressed ? .tertiary : .secondary)
            .cornerRadius(12)
            .shadow(color: .accentColor.opacity(0.1), radius: 2, x: 0.5, y: 1)
    }
}
