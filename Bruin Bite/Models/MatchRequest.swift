//
//  MatchRequest.swift
//  Bruin Bite
//
//  Created by Kameron Carr on 3/9/19.
//  Copyright © 2019 Dont Eat Alone. All rights reserved.
//

import Foundation
import UIKit

struct SuccessfulMatch{
    var profilePicture: UIImage;
    var user: String;
    var firstName: String;
    var lastName: String;
    var diningHall: String;
    var mealPeriod: String;
    var chatURL: String;
    var time: Date;
    
}

struct PendingMatch{
    var diningHall: String;
    var mealPeriod: String;
    var chatURL: String;
    var times: [Date];
    var status: String;
}
