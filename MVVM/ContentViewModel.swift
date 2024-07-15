//
//  ContentViewModel.swift
//  MVVM
//
//  Created by Andre Rocha on 14/07/2024.
//

import Foundation

//VIEW MODEL
class ContentViewModel: ObservableObject {
    var user = User(
        picture: "person.fill", name: "André Rocha", nick: "@andrerocha", followers: 2222
    )
    
    @Published var isFollowing = false
    
    func followToggle(){
        self.isFollowing.toggle()
        
        self.isFollowing ? (self.user.followers += 1) : (self.user.followers -= 1)
    }
}
