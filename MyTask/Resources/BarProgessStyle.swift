//
//  BarProgessStyle.swift
//  MyTask
//
//  Created by Apple on 2/22/25.
//

import SwiftUI

struct BarProgressStyle: ProgressViewStyle {
    var color: Color = .orange
    var height: CGFloat = 35.0
    var labelFontStyle: Font = .headline
    var cornerRadius: CGFloat = 10

    func makeBody(configuration: Configuration) -> some View {
        let progress = configuration.fractionCompleted ?? 0.2

        return VStack(alignment: .leading) {
            configuration.label
                .font(labelFontStyle)

            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: height)

                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(color)
                    .frame(width: CGFloat(progress) * 200, height: height)

                Text("This Month")
                    .foregroundColor(.white)
                    .bold()
                    .frame(height: height)
                    .padding(.leading, 10)
            }
            .frame(maxWidth: .infinity)
        }
    }
}
