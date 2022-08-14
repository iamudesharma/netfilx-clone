//
//  ContentView.swift
//  NetfilxClone
//
//  Created by udesh sharma on 14/08/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(uiColor: UIColor.darkGray).edgesIgnoringSafeArea(.all)
            
            TabView{
                HomeView().tabItem(){
                    Image(systemName: "homekit")
                    Text("Home")
                }
                
                Text("Game").tabItem({
                    Image(systemName: "homekit")
                    Text("Game")
                })
                
                
                Text("New&Hot").tabItem({
                    Image(systemName: "homekit")
                    Text("")
                    
                })
                Text("Fun").tabItem({
                    Image(systemName: "homekit")
                    Text("Home")
                    
                })
                Text("Download").tabItem({
                    Image(systemName: "homekit")
                    Text("Home")
                    
                })
            }.background(.black)
        }
        
        
        
        
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            ContentView()
        }
    }
}

struct CustomButton: View {
    
    let title: String
    let image: String
    
    var body: some View {
        VStack{
            Image(systemName: image)
                
                .foregroundColor(.white)
                .font(.headline)
            Text(title).font(.caption).fontWeight(.heavy).foregroundColor(.white)
                .padding(.top,5)
        }
    }
}

struct ImageSction: View {
    var body: some View {
        ZStack(alignment: .bottom){
            WebImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/1/10/Godzilla_%282014%29_poster.jpg")).resizable()
            
            HStack{
                Circle().frame(width: 5, height: 5, alignment: .center)
                Text("Explosive")
                
                Circle().frame(width: 5, height: 5, alignment: .center)
                Text("Exciting")
                Circle().frame(width: 5, height: 5, alignment: .center)
                Text("Sci-Fi ")
                
                
                
                
            }
            .padding(.bottom, 69.0)
            
            
            HStack(alignment: .center ){
                Spacer()
                Button(action: {
                    
                }, label: {
                    CustomButton(title: "My List", image: "plus")
                })
                
                
                Spacer()
                Button(action: {
                    
                }, label: {
                    HStack {
                        Image(systemName: "play")
                        Text("Play")
                    }
                    .padding(.all, 10.0)
                    .padding(.horizontal,10)
                    .foregroundColor(.black)
                    .background(.white)
                    .opacity(0.9)
                    .cornerRadius(5)
                   
                        
                }
                
                )
                Spacer()
                Button(action: {
                    
                }, label: {
                    CustomButton(title: "info", image: "pencil")
                })
                
                Spacer()
            }
            
            
            
            
        }.frame(width: Double.infinity, height: 400, alignment: Alignment.top)
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                
                ImageSction()
                
                
                Spacer()
            }
            .navigationTitle("Netflix")
            .navigationBarTitleDisplayMode(.inline)
            .navigationViewStyle(.stack)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Image("Netflix_Symbol_PMS"
                    )
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 56, alignment: .center)
                })
                ToolbarItem(placement: .automatic) {
                    Image(systemName: "homekit")
                }
                
            }
            
        }.background(.black)
    }
}
