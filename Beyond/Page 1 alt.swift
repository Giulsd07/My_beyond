//
//  Page 1 alt.swift
//  Beyond
//
//  Created by Giulia Di Meo on 16/11/23.
//

import SwiftUI

struct Page_1_alt: View {
    var body: some View {
        NavigationStack{
            ZStack{Color.mygrey
                    .ignoresSafeArea()
                ScrollView{
                    VStack(alignment: .center){
                        HStack {
                            Rectangle()
                                .fill(Color.dietro)
                                .frame(width: 75,height: 75)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.accentColor, lineWidth: 3))
                                .overlay(Image("cleric"))
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 220,height: 75)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.accentColor, lineWidth: 3))
                                .overlay(Text("BELMONT\ndragonborn")
                                    .foregroundColor(Color.accentColor)
                                    .padding(.trailing,UIScreen.main.bounds.width/4)
                                    
                              )
                        }
                        HStack {
                            Rectangle()
                            
                                .frame(width: 75,height: 75)
                                .foregroundColor(Color.orange.opacity(0.0))
                                .overlay(RoundedRectangle(cornerRadius: 0).strokeBorder(style: .init(lineWidth: 2, dash: [15])
                                )
                                    
                                 
)
                                .foregroundStyle(Color.accentColor)
                            Rectangle()
                            
                            
                                .frame(width: 220,height: 75)
                                .foregroundColor(Color.orange.opacity(0.0))
                                .overlay(RoundedRectangle(cornerRadius: 0).strokeBorder(style: .init(lineWidth: 2, dash: [15])
                                   ))
                                
                                         
                                .foregroundStyle(Color.accentColor)
                                
                        }
                          
                                         
                        
                        
                    }.padding(.top,UIScreen.main.bounds.width/5)
                    Spacer(minLength: 150)
                    

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
                    }
                    
                    
                    .position(x: UIScreen.main.bounds.width/2, y:300)
                }
                
            }.navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    Page_1_alt()
}
