//
//  CommitRow.swift
//  GithubViewer
//
//  Created by Andy Chou on 1/29/21.
//

import Foundation
import SwiftUI

struct CommitRow: View {
    var commitData:CommitData
    
    //Displays those commits in a list with the author, commit hash, and commit message
    var body: some View {
        VStack(spacing: 8) {
            Text(commitData.commit.message).font(.system(size:18)).frame(maxWidth:.infinity, alignment: .leading).padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
            HStack {
                Text(commitData.commit.author.name).font(.system(size:12))
                Text(commitData.sha).frame(maxWidth:.infinity).font(.system(size:10))
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 8, trailing: 8))
        }.frame(maxWidth:.infinity).border(Color.black)
    }
}
