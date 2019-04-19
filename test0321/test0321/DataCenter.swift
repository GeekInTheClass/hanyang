//
//  Data.swift
//  stuckmanagement
//
//  Created by 남혜빈 on 2019. 4. 18..
//  Copyright © 2019년 남혜빈. All rights reserved.
//

import Foundation


struct user {
    var name : String
    var phonenumber : String
    var birth : String
}


var girl1 = user(name: "Nam", phonenumber: "01036303192", birth: "1221")
var boy1 = user(name: "Son", phonenumber: "01012345678", birth: "0708")
var girl2 = user(name: "Lee", phonenumber: "01039281827", birth: "0322")
var boy2 = user(name: "Kim", phonenumber: "01029381226", birth: "1123")
var girl3 = user(name: "Park", phonenumber: "0102219849", birth: "0912")
var boy3 = user(name: "James", phonenumber: "18209829", birth: "1225")
var girl4 = user(name: "Choi", phonenumber: "01020192066", birth: "0505")
var boy4 = user(name: "Ki", phonenumber: "01012995453", birth: "0730")
var girl5 = user(name: "Natasha", phonenumber: "2938440192", birth: "0808")
var boy5 = user(name: "Hong", phonenumber: "01024383444", birth: "1009")

let couple_array : [user] = [girl1,girl2, girl3, girl4,girl5, boy1, boy2, boy3, boy4, boy5]


