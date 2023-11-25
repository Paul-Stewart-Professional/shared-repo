//
//  Registration.swift
//  hotelReservations
//
//  Created by Paul Stewart on 10/25/23.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String

    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int

    var wifi: Bool
    var roomType: RoomType
}
