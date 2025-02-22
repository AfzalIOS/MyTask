//
//  DashboardView.swift
//  MyTask
//
//  Created by Apple on 2/22/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        // MARK: - Ignition Off
        ScrollView(showsIndicators: false) {
                   VStack(alignment: .leading, spacing: 12) {
                       
                       ZStack {
                           VStack {
                               VStack(alignment: .leading, spacing: 2) {
                                   Text(StringConstants.titleStringContants.stoppedStatus)
                                       .fontWeight(.bold)
                                   
                                   HStack {
                                       VStack(alignment: .leading) {
                                           Text(StringConstants.titleStringContants.lastReported)
                                               .font(.system(size: 10))
                                           
                                           Text(StringConstants.titleStringContants.locationDetails)
                                               .font(.system(size: 10))
                                           
                                           Text(StringConstants.titleStringContants.reportTime)
                                               .padding(.top, 3.5)
                                               .font(.system(size: 10))
                                       }
                                       Spacer()
                                       
                                       Image(StringConstants.imageConstants.meterImage)
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width: 45, height: 45)
                                           .offset(y: -10)
                                           .padding(.bottom, 10)
                                   }
                               }
                               .padding()
                               .foregroundColor(.white)
                               .background(Color.black.opacity(0.6))
                               .cornerRadius(15)
                               .shadow(radius: 5)
                               
                               
                               // MARK: - GaugesView
                               
                               VStack(alignment: .leading, spacing: 10) {
                                   Text(StringConstants.titleStringContants.time)
                                       .foregroundColor((StringConstants.AppColors.blue))
//                                       .fontWeight(.bold)
                                       .font(.system(size: 15))
                                       .padding(.bottom)
                                   
                                   ForEach(gaugeItems, id: \.title) { item in
                                       GaugeView(
                                           title: item.title,
                                           unit: item.unit,
                                           value: item.value
                                       )
                                   }
                               }
                               .padding()
                           }
                       }
                       .frame(maxWidth: .infinity)
                       .background(Color.white)
                       .cornerRadius(15)
                       .shadow(radius: 5)
                       .padding(.horizontal)
                       
                       // MARK: - TripView
                       TripView()
                   }
                   .padding(.top)
               }
    }
}

struct GaugeView: View {
    
    
    var title: String
    var unit: String
    var value: Double
    
    
    
    var body: some View {
        
        
        HStack(alignment: .center) {
            Text(title)
                .font(.system(size: 12))
                .frame(width: 90, alignment: .leading)
            Gauge(value: 0, in: 0...100) {
            }
            .gaugeStyle(.linearCapacity)
            .offset(y:1)
            
            
            Text("\(unit == "PKR" ? String(Int(value)) : String(format: "%.1f", value)) \(unit)")
                .font(.system(size: 12))
                .frame(minWidth: 50, alignment: .trailing)
        }
        .frame(height: 20)
    }
}




struct TripView: View {
    
    @State private var progress: Double = 0.6
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            
            HStack(spacing: 5) {
                Image("triplocation")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28, height: 28)
                    .foregroundColor(.orange)
                Text(StringConstants.TripContant.tripsTitle)
                    .foregroundColor(StringConstants.AppColors.orange)
                    .font(.system(size: 28, weight: .bold))
                 
                
            }
            Text(getAttributedText())
                .font(.system(size: 12))
                .fontWeight(.bold)
                .offset(x:5)
                .foregroundColor(.gray)
                .padding(.bottom, 4)
            
            Divider()
               
                
            
            
            CustomProgressView(progress: progress)
            
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
        .padding(.horizontal)
        
    }
    
    
    
    
    private func getAttributedText() -> AttributedString {
        var attributedString = AttributedString(
            StringConstants.AttributeConstants.TextContent.tripsSubTitle
        )
            
        if let range = attributedString.range(of: "41 Trips") {
            attributedString[range].foregroundColor = Color("orangecolor")
            attributedString[range].font = Font.system(size: 12, weight: .bold)
        }
        return attributedString
    }
    
}


#Preview {
    DashboardView()
}
