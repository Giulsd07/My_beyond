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
                            Text("Race").foregroundColor(Color.accentColor).tag("Race")
                                
                            Text("Dragonborn").foregroundColor(Color.accentColor).tag("Dragonborn")
                                
                            Text("Elf").foregroundColor(Color.accentColor)
                                .tag("Elf")
                                
                            Text("Dwarf") .foregroundColor(Color.accentColor)
                                .tag("Dwarf")
                               
                            Text("Halfling").foregroundColor(Color.accentColor)
                                .tag("Halfling")
                                
                            Text("Human").foregroundColor(Color.accentColor).tag("Human")
                                
                            Text("Orc").foregroundColor(Color.accentColor)
                                .tag("Orc")
                                
                        }
                        .pickerStyle(.wheel)
                        .accessibilitySortPriority(26)
                        Divider()
                        
                        Picker("Class", selection: $selectiondue) {
                            Text("Class")
                                .foregroundColor(Color.accentColor)
                                .tag("Class")
                            Text("Druid") .foregroundColor(Color.accentColor)
                                .tag("Druid")
                            Text("Monk") .foregroundColor(Color.accentColor)
                                .tag("Monk")
                            Text("Warlock")  .foregroundColor(Color.accentColor)
                                .tag("Warlock")
                            Text("Fighter") .foregroundColor(Color.accentColor)
                                .tag("Fighter")
                            Text("Barbarian").foregroundColor(Color.accentColor)
                                .tag("Barbarian")
                            Text("Cleric") .foregroundColor(Color.accentColor)
                                .tag("Cleric")
                               
                            
                        }
                        .pickerStyle(.wheel)
                        
                        .accessibilitySortPriority(26)
                        
                        
                            Text("Abilities Score")
                                .padding(.trailing,UIScreen.main.bounds.width/1.8)
                                .accessibilitySortPriority(25)
                        
                        
                        Line()
                            .stroke()
                            .foregroundStyle(Color.accentColor)
                            .frame(height: 10)
                        
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(one)"))
                                .accessibilitySortPriority(23)
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                
                                .overlay(
                                    Text("Strenght")
                                        .accessibilitySortPriority(24)
                                )
                            Button(action: {one=one+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                    .accessibilitySortPriority(22)
                                
                            })
                            Button(action: {one=one-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                    .accessibilitySortPriority(21)
                                
                            })
                            
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(two)"))
                                .accessibilitySortPriority(19)
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Dexterity")
                                        .accessibilitySortPriority(20)
                                )
                            Button(action: {two=two+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                    .accessibilitySortPriority(18)
                                
                            })
                            Button(action: {two=two-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                    .accessibilitySortPriority(17)
                                
                            })
                           
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(three)"))
                                .accessibilitySortPriority(15)
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Costitution")
                                        .accessibilitySortPriority(16)
                                )
                            Button(action: {three=three+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                    .accessibilitySortPriority(14)
                                
                            })
                            Button(action: {three=three-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                    .accessibilitySortPriority(13)
                            })
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(four)"))
                                .accessibilitySortPriority(11)
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Intelligence")
                                        .accessibilitySortPriority(12)
                                )
                            Button(action: {four=four+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                    .accessibilitySortPriority(10)
                                
                            })
                            Button(action: {four=four-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                    .accessibilitySortPriority(9)
                                
                            })
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(five)"))
                                .accessibilitySortPriority(7)
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Wisdom")
                                        .accessibilitySortPriority(8)
                                )
                            Button(action: {five=five+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                    .accessibilitySortPriority(6)
                                
                            })
                            Button(action: {five=five-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                    .accessibilitySortPriority(5)
                                
                            })
                        }
                        HStack{
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 40,height: 40)
                                .overlay (Text("\(six)"))
                                .accessibilitySortPriority(3)
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 200,height: 40)
                            
                                .foregroundStyle(.black)
                                .overlay(
                                    Text("Charisma")
                                        .accessibilitySortPriority(4)
                                )
                            Button(action: {six=six+1}, label: {
                                Image(systemName: "plus.circle.fill")
                                    .accessibilitySortPriority(2)
                                
                            })
                            Button(action: {six=six-1}, label: {
                                Image(systemName: "minus.circle.fill")
                                    .accessibilitySortPriority(1)
                                
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
