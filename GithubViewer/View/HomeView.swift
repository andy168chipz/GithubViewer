//
//  ContentView.swift
//  GithubViewer
//
//  Created by Andy Chou on 1/28/21.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var homeVM = HomeViewModel()
    
    var body: some View {
        VStack{
            HStack {
                Text("Author").border(Color.black)
                Text("Commit Hash").border(Color.black)
                Text("Commit Message").border(Color.black)
            }
            ForEach(self.homeVM.commitData, id:\.sha) {
                commitData in
                CommitRow(commitData: commitData)
            }
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
