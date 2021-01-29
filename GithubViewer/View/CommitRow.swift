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
        VStack {
            Text(commitData.commit.message).frame(maxWidth:.infinity, alignment: .leading).padding(.horizontal, 8)
            HStack {
                Text(commitData.commit.author.name)
                Text(commitData.sha).frame(maxWidth:.infinity)
            }.padding(.horizontal, 8)
        }.frame(maxWidth:.infinity).border(Color.black)
    }
}
