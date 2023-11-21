//
//  ContentView.swift
//  Beyond
//
//  Created by Giulia Di Meo on 15/11/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
       
            
            NavigationStack{
            
                ZStack{
                    Color.mygrey
                        .ignoresSafeArea()
                    ScrollView{
                        VStack{
                            
                            Image("dragon")
                                .position(CGPoint(x: 80.0, y: 110.0))
                            
                            
                            Text("Your adventure will start soon")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.accentColor)
                                .padding(.leading,UIScreen.main.bounds.width/12)
                                .padding(.trailing,UIScreen.main.bounds.width/7)
                            
                            Text("Characters you create will appear \nhere. You currently have no character")
                                .font(.title3)
                                .foregroundStyle(Color.accentColor)
                                .padding(.leading,UIScreen.main.bounds.width/12)
                                .padding(.trailing,UIScreen.main.bounds.width/12)
                                .padding(.bottom,UIScreen.main.bounds.height/18)
                            
                            
                            
                          
                            
                        }
                        .padding(.top,UIScreen.main.bounds.width/7)
                        NavigationLink(destination: Page_2()) {
                            Rectangle()
                            
                                .fill(Color.accentColor)
                                .frame(width: 260,height: 80)
                            
                                .foregroundStyle(.black)
                            
                                .overlay(
                                    Text("CREATE A NEW CHARACTER")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.mygrey)
                                )
                        }.position(x: UIScreen.main.bounds.width/2, y:15)
                        
                        
                       
                      
                    }
                
            }
            
        }
        
    }
    
}
    
    
    
    
    #Preview {
        ContentView()
    }
    

