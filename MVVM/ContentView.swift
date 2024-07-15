//
//  ContentView.swift
//  MVVM
//
//  Created by Andre Rocha on 14/07/2024.
//

import SwiftUI

//VIEW
struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: viewModel.user.picture)
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.bottom, 10)
            
            Text(viewModel.user.name)
                .font(.system(size: 50, weight: .bold))
            
            Text(viewModel.user.nick)
                .font(.system(size: 23, weight: .regular))
            
            Text("\(viewModel.user.followers)")
                .font(.system(size: 80, weight: .light))
                .padding(40)
            
            VStack {
                Button { viewModel.followToggle() } label: {
                    Label(!viewModel.isFollowing ? "follow" : "unfollow", systemImage: "plus")
                        .font(.title3)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(!viewModel.isFollowing ? .blue : .black)
                
                Button { } label: {
                    Label("send message", systemImage: "paperplane.fill")
                        .font(.title3)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(!viewModel.isFollowing)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
