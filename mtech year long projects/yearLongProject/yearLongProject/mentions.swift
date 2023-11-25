//
//  mentions.swift
//  yearLongProject
//
//  Created by Paul Stewart on 11/17/23.
//

import Foundation

var arrayOfMentions: [Mentions] = [
    Mentions(image: "mention1", title: "s/o to Paul for the new keyboard", date: "11/1/23", description: "New keyboard looks and feels amazing. Thank you so much for the inspiration.", comments: 8, likes: 56, saves: 1),
    Mentions(image: "mention2", title: "thoughts on new mouse?", date: "07/24/23", description: "went to bestbuy with my buddy paul, got some cool gear. Easily my favorite mouse I've used thusfar.", comments: 3, likes: 44, saves: 0),
    Mentions(image: "mention3", title: "Yo any idea if this is good?", date: "12/21/22", description: "Been looking into getting one and Paul is out of town so I thought I'd ask you guys", comments: 22, likes: 70, saves: 1),
    Mentions(image: "mention1", title: "s/o to Paul for the new keyboard", date: "11/1/23", description: "New keyboard looks and feels amazing. Thank you so much for the inspiration.", comments: 8, likes: 56, saves: 1),
    Mentions(image: "mention2", title: "thoughts on new mouse?", date: "07/24/23", description: "went to bestbuy with my buddy paul, got some cool gear. Easily my favorite mouse I've used thusfar.", comments: 3, likes: 44, saves: 0)
]

struct Mentions {
    var image: String
    var title: String
    var date: String
    var description: String
    var comments: Int
    var likes: Int
    var saves: Int
}
