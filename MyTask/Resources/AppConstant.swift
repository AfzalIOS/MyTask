//
//  AppConstant.swift
//  MyTask
//
//  Created by Apple on 2/22/25.
//

import Foundation
import SwiftUICore



struct StringConstants
{
    
    
    struct AppColors {
        static let primary = Color("fontcolor")
        static let blue = Color("bluecolor")
        static let orange = Color("orangecolor")
        static let Gray = Color("GrayColor")
    }

    
    struct imageConstants
    {
        static let InaviIcon =  "destination"
        static let locationImage = "location_icon"
        static let meterImage = "metre"
    }
    
    struct titleStringContants
    {
        static let stoppedStatus = "Stopped - 0 KM/Hr - Ignition Off"
        static let lastReported = "Last Reported Location:"
        static let locationDetails = "0 km away from CDGK Parking Plaza, New MA Jinnah Road, Karachi, Sindh."
        static let reportTime = "At: 2024-08-04 21:57:35."
        static let time =  "Since 12AM"
        static let mileage = "Mileage"
        static let amountSpent = "Amount Spent"
        static let fuelConsumed = "Fuel Consumed"
        
        static let navigateTitle = "iNavigate"
        static let driverScore = "Driver Score"
    }
    
    
    struct UnitConstants {
        static let km = "KM"
        static let pkr = "PKR"
        static let liter = "LTR"
    }
    
    
    
    
    
    struct TripContant{
        
        static let tripsLogo = ""
        static let tripsTitle = "Trips"
        static let currentTrips = "4 Trips"
        static let lastMonthTrips = "45 Trips"
        static let lastMonthLabel = "Last Month"
    }
    
    struct AttributeConstants {
        struct TextContent {
            static let tripsSubTitle = "You have made 41 Trips less than this month"
        }
    }
    
}

