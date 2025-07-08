//
//  GlassView.swift
//  LiquidGlassExamplesApp
//
//  Created by Adi Mizrahi on 07/07/2025.
//


import SwiftUI

struct GlassView: View {
    var body: some View {
        VStack {
            Spacer()

            Button {
                print("Basic glass button tapped")
            } label: {
                Text("Liquid Glass")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
            }
            .glassEffect()

            Button {
                print("Shaped glass button tapped")
            } label: {
                Text("Experience the future")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
            }
            .glassEffect(in: .rect(cornerRadius: 16.0))

            Button {
                print("Interactive glass button tapped")
            } label: {
                Text("Touch me!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
            }
            .glassEffect(.regular.tint(.orange).interactive())

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [.blue, .purple, .pink],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
        )
    }
}
