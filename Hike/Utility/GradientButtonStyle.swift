//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Abdelaziz Bennacer on 05/05/2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional statement with nil coalescing
                // Condition ? A : B
                configuration.isPressed ?                // A: When User pressed the Button
                // B: When the Button is not pressed
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .cornerRadius(40)
    }
}

    
