//
//  CommitModel.swift
//  GithubViewer
//
//  Created by Andy Chou on 1/29/21.
//

import Foundation

struct CommitData:Decodable{
    var sha:String
    var commit:Commit
    var url:URL
}


struct Commit:Decodable {
    var author:Author
    var message:String
    var commentCount:Int
}

struct Author:Decodable{
    var name:String
    var email:String
    var date:String
}


