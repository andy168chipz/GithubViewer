//
//  HomeViewModel.swift
//  GithubViewer
//
//  Created by Andy Chou on 1/29/21.
//

import Foundation
import SwiftUI


let API_ENDPOINT = URL(string: "https://api.github.com/repos/andy168chipz/GithubViewer/commits")!
class HomeViewModel: ObservableObject {
    
    @Published var commitData:[CommitData] = [CommitData]()
    @Published var isLoading = false
    
    init() {
        loadCommits(url: API_ENDPOINT)
    }
    
    func loadCommits(url: URL){
        self.isLoading = true
        URLSession.shared.dataTask(with: url) { (data,resp,error) in
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                
            } catch {
                
            }
            
        }.resume()
    }
}
