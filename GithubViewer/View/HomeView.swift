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
                Text("Author").frame(maxWidth:.infinity).border(Color.black)
                Text("Commit Hash").frame(maxWidth:.infinity).border(Color.black)
                Text("Message").frame(maxWidth:.infinity).border(Color.black)
            }.frame(maxWidth: .infinity)
            ForEach(self.homeVM.commitData, id:\.sha) {
                commitData in
                CommitRow(commitData: commitData).frame(maxWidth:.infinity)
            }
        }.frame(maxWidth:.infinity)
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
