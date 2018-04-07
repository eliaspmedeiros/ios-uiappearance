//
//  AppearanceService.swift
//  UIAppearance
//
//  Created by Elias Medeiros on 07/04/2018.
//  Copyright © 2018 CWI Software. All rights reserved.
//

import UIKit

class AppearanceService {
    
    static func customizations() {
        let searchBarPlaceholderAppearance = UILabel.appearance(whenContainedInInstancesOf: [UISearchBar.self])
        searchBarPlaceholderAppearance.adjustsFontSizeToFitWidth = true
        
        let traits = UITraitCollection.init(traitsFrom: [.init(horizontalSizeClass: .regular), .init(verticalSizeClass: .regular)])
        let bigScreensPlaceholderAppearance = UILabel.appearance(for: traits, whenContainedInInstancesOf: [UISearchBar.self])
        bigScreensPlaceholderAppearance.shadowColor = .gray
    }
    
}
