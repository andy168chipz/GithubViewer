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
        HStack {
            Text(commitData.commit.author.name).frame(maxWidth:.infinity).border(Color.black)
            Text(commitData.sha).frame(maxWidth:.infinity).border(Color.black)
            Text(commitData.commit.message).frame(maxWidth:.infinity).border(Color.black)
        }.frame(maxWidth:.infinity)
    }
}
