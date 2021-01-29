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
    @Published var hasError = false
    
    init() {
        loadCommits(url: API_ENDPOINT)
    }
    
    func loadCommits(url: URL){
        self.isLoading = true
        URLSession.shared.dataTask(with: url) { (data,resp,error) in
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let commits = try decoder.decode([CommitData].self,from:data!)
                DispatchQueue.main.async {
                    self.commitData = commits
                    self.isLoading = false
                }
            } catch {
                print("API Call error: \(error)")
                DispatchQueue.main.async{
                    self.isLoading = false
                    self.hasError = true
                }
            }
        }.resume()
    }
}
