//
//  GlassContainersView.swift
//  LiquidGlassExamplesApp
//
//  Created by Adi Mizrahi on 08/07/2025.
//


//
//  GlassView.swift
//  LiquidGlassExamplesApp
//
//  Created by Adi Mizrahi on 07/07/2025.
//


import SwiftUI

struct GlassContainersView: View {

    @Namespace private var glassNamespace

    var body: some View {
        let iconArray: [String] = ["star.fill", "heart.fill", "flame.fill", "sparkles"]

        VStack {

            GlassEffectContainer(spacing: 16.0) {
                HStack(spacing: 16.0) {
                    ForEach(iconArray.indices, id: \.self) { index in
                        Image(systemName: iconArray[index])
                            .frame(width: 70.0, height: 70.0)
                            .font(.system(size: 32))
                            .glassEffect()
                            .glassEffectUnion(id: index < 3 ? "group1" : "group2", namespace: glassNamespace)
                    }
                }
            }

            GlassEffectContainer(spacing: 30.0) {
                HStack(spacing: 30.0) {
                    Image(systemName: "paintbrush.fill")
                        .frame(width: 70.0, height: 70.0)
                        .font(.system(size: 32))
                        .glassEffect()

                    Image(systemName: "trash.fill")
                        .frame(width: 70.0, height: 70.0)
                        .font(.system(size: 32))
                        .glassEffect()
                        .offset(x: -30.0, y: 0.0)
                }
            }

            GlassEffectContainer(spacing: 30.0) {
                HStack(spacing: 30.0) {
                    Image(systemName: "calendar")
                        .frame(width: 70.0, height: 70.0)
                        .font(.system(size: 32))
                        .glassEffect(.regular.interactive())

                    Image(systemName: "note")
                        .frame(width: 70.0, height: 70.0)
                        .font(.system(size: 32))
                        .glassEffect(.regular.interactive())
                        .offset(x: -30.0, y: 0.0)
                }
            }

            GlassEffectContainer(spacing: 30.0) {
                HStack(spacing: 30.0) {
                    Image(systemName: "pencil")
                        .frame(width: 70.0, height: 70.0)
                        .font(.system(size: 32))
                        .glassEffect(.regular.tint(.green).interactive())

                    Image(systemName: "trash.fill")
                        .frame(width: 70.0, height: 70.0)
                        .font(.system(size: 32))
                        .glassEffect(.regular.tint(.red).interactive())
                        .offset(x: -30.0, y: 0.0)
                }
            }
        }
    }
}
