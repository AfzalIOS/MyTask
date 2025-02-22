//
//  PorgressView.swift
//  MyTask
//
//  Created by Apple on 2/22/25.
//


import Foundation
import SwiftUICore
import SwiftUI

struct CustomProgressView: View {
    var progress: Double

    var body: some View {
        VStack(alignment: .leading,  spacing: 20) {
            ProgressView(value: 0.1) {
                HStack{
                    Text("4")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                    Text("Trips")
                        .fontWeight(.bold)
                        .foregroundColor(StringConstants.AppColors.Gray)
                        .offset(y:3)
                }
               
            }
            .progressViewStyle(
                BarProgressStyle(
                    color: StringConstants.AppColors.orange,
                    cornerRadius: 10
                )
            )

            ProgressView(value: 100, total: 100) {
                HStack{
                    Text("45")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                    Text("Trips")
                        .fontWeight(.bold)
                        .foregroundColor(StringConstants.AppColors.Gray)
                        .offset(y:3)
                }
            }
            .progressViewStyle(BarProgressStyle(color: .gray.opacity(0.3), cornerRadius: 10))
        }
        .padding()

    }
}
