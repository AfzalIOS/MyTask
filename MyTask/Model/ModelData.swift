//
//  ModelData.swift
//  MyTask
//
//  Created by Apple on 2/22/25.
//

import Foundation
import SwiftUICore



struct NavigateItem {
    let name: String
    let imageName: String
    let color: Color
    
    
}

let navigateItems: [NavigateItem] = [
    NavigateItem(name: "Parkings", imageName: "house.fill", color: .yellow),
    NavigateItem(name: "Gas", imageName: "fuelpump.fill", color: .blue),
    NavigateItem(name: "Restaurants", imageName: "fork.knife", color: .cyan),
    NavigateItem(name: "Banks", imageName: "banknote.fill", color: .black),
    NavigateItem(name: "Hospitals", imageName: "cross.fill", color: .red),
    NavigateItem(name: "Car Maintenance", imageName: "wrench.fill", color: .green)
]



struct InfoCard {
    let title: String
    let subtitle: String
    let value: Int
    let unit: String
    let icon: String
    
    
}

let InfoCardItems: [InfoCard] = [
    InfoCard(title: "Personal Hrs", subtitle: "(past 4 weeks)", value: 1, unit: "hrs", icon: "personalhrs"),
    InfoCard(title: "Business Hrs", subtitle: "(past 4 weeks)", value: 12, unit: "hrs", icon: "bagIcon"),
    
]


struct GaugeData {
    let title: String
    let unit: String
    let value: Double
}

let gaugeItems: [GaugeData] = [
    GaugeData(title: StringConstants.titleStringContants.mileage, unit: StringConstants.UnitConstants.km, value: 0.0),
    GaugeData(title: StringConstants.titleStringContants.amountSpent, unit: StringConstants.UnitConstants.pkr, value: 0.0),
    GaugeData(title: StringConstants.titleStringContants.fuelConsumed, unit: StringConstants.UnitConstants.liter, value: 0.0)
]
