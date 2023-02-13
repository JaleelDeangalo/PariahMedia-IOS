//
//  MainView.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 12/29/22.
//

import SwiftUI

struct MainView: View {
    init() {
          UITabBar.appearance().isTranslucent = false
      }
    var body: some View {
        VStack {
            TabView {
                
                FeedView()
                    .tabItem {
                        VStack {
                            Image(systemName: "house")
                                Text("Feed")
                            }
                        }.navigationTitle("")
                        .toolbar(.hidden)
                
                SearchView()
                    .tabItem {
                        VStack {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }.navigationTitle("")
                            .toolbar(.hidden)
                    }
                
                SettingsView()
                    .tabItem {
                        VStack {
                            Image(systemName: "gear")
                            Text("Search")
                        }.navigationTitle("")
                            .toolbar(.hidden)
                    }
                
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
