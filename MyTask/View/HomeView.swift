//
//  HomeView.swift
//  MyTask
//
//  Created by Apple on 2/22/25.
//

import SwiftUI

struct HomeView: View {
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 3)
    
    var body: some View {
        
        ScrollView {
            // MARK: - iNavigate
            VStack {
                VStack(alignment: .leading, spacing: 30) {
                    HStack {
                        Image(StringConstants.imageConstants.InaviIcon)
                            .resizable()
                            .frame(width: 34, height: 34)
                            .foregroundColor(.orange)
                        
                        Text(
                            StringConstants.titleStringContants.navigateTitle
                        )
                        .font(.headline)
                        .foregroundColor(
                            StringConstants.AppColors.primary
                        )
                        .fontWeight(.bold)
                    }
                    .padding(.top)
                    
                    LazyVGrid(columns: columns, spacing: 50) {
                        ForEach(navigateItems, id: \.name) { item in
                            NavigateIcon(
                                name: item.name,
                                imageName: item.imageName,
                                color: item.color
                            )
                        }
                    }
                    .padding()
                }
                .padding()
                .foregroundColor(StringConstants.AppColors.primary)
                .fontWeight(.bold)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 5)
                .padding(.horizontal, 10)
                
                HStack(spacing: 10) {
                    ForEach(InfoCardItems, id: \.title) { items in
                        InfoCardView(card: items)
                    }
                }
                .padding(.horizontal, 10)
                
                VStack {
                    HStack {
                        Image("driver")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text(
                            StringConstants.titleStringContants.driverScore
                        )
                        .font(.headline)
                        .foregroundColor(StringConstants.AppColors.primary)
                        .offset(y:7)
                        .bold()
                        Spacer()
                    }
                    .padding()
                    
                    HStack(spacing: 2) {
                        ForEach(0..<5) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .offset(x: 25)
                                .padding(.leading)
                                .padding(-10)
                        }
                        
                        Spacer()
                        HStack {
                            Text("97")
                                .font(.system(size: 45))
                                .bold()
                            Text("%")
                                .font(.system(size: 23))
                                .offset(x: -8, y: 9)
                        }
                    }
                    .padding()
                }
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 5)
                .padding(.horizontal, 10)
            }
            .padding(.vertical)
        }
        
        
    }
    
    
    
    
}

struct NavigateIcon: View {
    var name: String
    var imageName: String
    var color: Color
    
    var body: some View {
        VStack {
            Circle()
                .fill(color)
                .frame(width: 50, height: 50)
                .overlay(
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                )
            
            
            Text(name)
                .font(.footnote)
                .lineLimit(1)
                .minimumScaleFactor(0.6)
                .multilineTextAlignment(.center)
                .frame(width: 80)
        }
    }
}

struct InfoCardView: View {
    
    let card:InfoCard
    
    var body: some View {
        VStack(alignment: .leading, spacing: 28) {
            HStack {
                Image(card.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35)
                    .offset(x:-6)
                    .font(.title2)
                    .foregroundColor(.blue)
                Spacer()
                
                VStack(alignment: .center, spacing: 5) {
                    Text(card.title)
                        .font(.subheadline)
                        .foregroundColor(StringConstants.AppColors.primary)
                        .bold()
                        .lineLimit(1)
                    Text(card.subtitle)
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                    
                }
                Spacer()
            }
            HStack (spacing: 20){
                
                Text("\(card.value)")
                    .font(.largeTitle)
                    .offset(x:27)
                    .multilineTextAlignment(.center)
                    .bold()
                
                Text("\(card.unit)")
                    .font(.headline)
                    .offset(x:23, y: 5)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.leading, 0)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .center)
        
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
        
        
    }
}

#Preview {
    HomeView()
}
