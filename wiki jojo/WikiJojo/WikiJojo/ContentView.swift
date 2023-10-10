//
//  ContentView.swift
//  WikiJojo
//
//  Created by User on 10/10/23.
//

import SwiftUI

struct UserModel: Codable{
    var id: Int
    var name: String
    var username: String
    var email: String
}

struct ContentView: View {
    @State private var users = [UserModel]()
    
    var body: some View {
        NavigationView {
            List(users, id: \.id){ user in
                VStack(alignment: .leading){
                    Text(user.name).font(.headline).foregroundColor(Color.blue)
                    Text(user.username).font(.headline).foregroundColor(.secondary)
                    Text(user.email).font(.headline).foregroundColor(.secondary)
                }
            }.navigationTitle("users api").task{
                await fetchData()
            }
        }
    }
    func fetchData() async{
        guard let url = URL(string:"https://jsonplaceholder.typicode.com/users") else{
            print("this URL is not working!")
            return
        }
    do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode([UserModel].self,from: data){
                users = decodedResponse
            }
        }catch{
            print("These data are not valid")
    }
 }
}
struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
ContentView()}
}
