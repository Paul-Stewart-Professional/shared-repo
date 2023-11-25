//
//  posts.swift
//  yearLongProject
//
//  Created by Paul Stewart on 11/17/23.
//

import Foundation

var arrayOfPosts: [Post] = [
    Post(image: "post1", title: "ToTK on MacBook?", date: "10/14/22", description: "I can't believe I got Tears of The kingdom Ony My Macbook", comments: 12, likes: 50, saves: 2),
    Post(image: "post2", title: "New custom XBOX Controller", date: "04/24/22", description: "Thoughts on my custome gamecube style Xbox controller??", comments: 45, likes: 120, saves: 5),
    Post(image: "post3", title: "New setup, who dis?", date: "01/12/22", description: "New setup, super happy with how it turned out. s/o to cookie for the squishmallow", comments: 5, likes: 75, saves: 0),
    Post(image: "post1", title: "ToTK on MacBook?", date: "10/14/22", description: "I can't believe I got Tears of The kingdom Ony My Macbook", comments: 12, likes: 50, saves: 2),
    Post(image: "post2", title: "New custom XBOX Controller", date: "04/24/22", description: "Thoughts on my custom gamecube style Xbox controller??", comments: 45, likes: 120, saves: 5)
]

struct Post {
    var image: String
    var title: String
    var date: String
    var description: String
    var comments: Int
    var likes: Int
    var saves: Int
}
