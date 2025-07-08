//
//  ExampleListView.swift
//  LiquidGlassExamplesApp
//
//  Created by Adi Mizrahi on 07/07/2025.
//

import SwiftUI

struct ExampleListView: View {
    let examples: [(title: String, destination: AnyView)] = [
        ("Glass Buttons", AnyView(GlassView())),
        ("Glass Icons", AnyView(GlassContainersView())),
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<examples.count, id: \.self) { index in
                    NavigationLink(destination: examples[index].destination) {
                        Text(examples[index].title)
                    }
                }
            }
            .navigationTitle("Liquid Glass Examples")
        }
    }
}
