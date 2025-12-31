//
//  UserViewModel.swift
//  Api
//
//  Created by bd01 on 29/12/25.
//


import UIKit

class UserViewModel{
    
    weak var vc:ViewController?
    var arrUsers = [UserModel]()
    
    func getAllUserData(){
        
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/posts")!) { (data, response, error) in
            if error == nil{
                if let data = data{
                    do{
                        let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                        for modelUser in userResponse{
                            self.arrUsers.append(modelUser)
                        }
//                        print(self.arrUsers)
                        
//                        print(userResponse)
                        
//                        self.arrUsers.append(contentsOf: userResponse)
                        DispatchQueue.main.async {
                            self.vc?.tblView.reloadData()
                            print(userResponse)
                        }
                        
                    }catch let err{
                        print(err.localizedDescription)
                    }
                }
                
            }else{
                print(error?.localizedDescription as Any)
            }
        }.resume()
        
    }
    
}
