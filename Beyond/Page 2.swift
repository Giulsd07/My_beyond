//
//  Page 2.swift
//  Beyond
//
//  Created by Giulia Di Meo on 16/11/23.
//

import SwiftUI

struct Page_2: View {
    struct Line: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            return path
        }
    }
    @State var selectiondue = "Class"
    var classe = ["Dragonborn,Elf,Dwarf,Halfling,Human,Orc"]
    
    @State var selection = "Race"
    var race = ["Druid,Monk,Warlock,Fighter,Barbarian,Cleric"]
    @State var one = 10
    @State var two = 10
    @State var three = 10
    @State var four = 10
    @State var five = 10
    @State var six = 10
    
    

    var body: some View {
        NavigationStack{
            
            ZStack{
                Color.mygrey
                    .ignoresSafeArea()
               
                ScrollView{
                    VStack(alignment: .center){
                        
                        
                     
                        
                        Picker("Race", selection: $selection) {
                            Text("Race").tag("Race")
                            Text("Dragonborn").tag("Dragonborn")
                            Text("Elf").tag("Elf")
                            Text("Dwarf").tag("Dwarf")
                            Text("Halfling").tag("Halfling")
                            Text("Human").tag("Human")
                            Text("Orc").tag("Orc")
                        }
                        .pickerStyle(.wheel)
                        .tag("\(selection)")
                        .foregroundStyle(Color.accentColor)
                        Divider()
                        
                        Picker("Class", selection: $selectiondue) {
                            Text("Class").tag("Class")
                            Text("Druid").tag("Druid")
                            Text("Monk").tag("Monk")
                            Text("Warlock").tag("Warlock")
                            Text("Fighter").tag("Fighter")
                            Text("Barbarian").tag("Barbarian")
                            Text("Cleric").tag("Cleric")
                            
                        }
                        .pickerStyle(.wheel)
                        .tag("\(selectiondue)")
                        .foregroundStyle(Color.accentColor)
                        
                        
                            Text("Abilities Score")
                                .padding(.trailing,UIScreen.main.bounds.width/1.8)
                        
                        
                        Line()
                            .stroke()
                            .foregroundStyle(Color.accentColor)
                            .frame(height: 10)
                        
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(one)"))
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                
                                .overlay(
                                    Text("Strenght")
                                )
                            Button(action: {one=one+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                
                            })
                            Button(action: {one=one-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                
                            })
                            
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(two)"))
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Dexterity")
                                )
                            Button(action: {two=two+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                
                            })
                            Button(action: {two=two-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                
                            })
                           
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(three)"))
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Costitution")
                                )
                            Button(action: {three=three+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                
                            })
                            Button(action: {three=three-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                
                            })
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(four)"))
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Intelligence")
                                )
                            Button(action: {four=four+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                
                            })
                            Button(action: {four=four-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                
                            })
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(five)"))
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Wisdom")
                                )
                            Button(action: {five=five+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                
                            })
                            Button(action: {five=five-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                
                            })
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(six)"))
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Charisma")
                                )
                            Button(action: {six=six+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                
                            })
                            Button(action: {six=six-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                
                            })
                        }
                    }
                    
                }
               
                .foregroundStyle(Color.accentColor)
            }.toolbarBackground(Color.mygrey, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    
                        Image("yee")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50)
                            .accessibilityHidden(true)
                        
                    
                    }
                        
                ToolbarItem(placement: .topBarTrailing) {
                    
                    NavigationLink("Next", destination: Page_3())
                        
                    
                }
                
            }
                
        }
      
            }
    
}
    
        
        
    
    

#Preview {
    Page_2()
}
