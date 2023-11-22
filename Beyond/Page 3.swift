//
//  Page 3.swift
//  Beyond
//
//  Created by Giulia Di Meo on 16/11/23.
//

import SwiftUI

struct Page_3: View {
    struct Line: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            return path
        }
    }
    
    @State var selectiontre = "Background"
    @State var proficiencies: Backgrounds?
    @State var selectionquattro = "Toolsprof"
    @State var selectioncinque = "Skillsprof"
    let backgrounds = BackgroundModel()
    var body: some View {
        
        NavigationStack{
            
            ZStack{Color.mygrey
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        
                        Picker("Background", selection: $selectiontre) {
                            Text("Background").foregroundColor(Color.accentColor)
                                .tag("Background")
                                
                            Text("Criminal/Spy").foregroundColor(Color.accentColor)
                                .tag("Criminal/Spy")
                                
                            Text("Folk Hero").foregroundColor(Color.accentColor)
                                .tag("Folk Hero")
                               
                            Text("Haunted One").foregroundColor(Color.accentColor)
                                .tag("Haunted One")
                               
                            Text("Noble").foregroundColor(Color.accentColor)
                                .tag("Noble")
                                
                            Text("Sage").foregroundColor(Color.accentColor)
                                .tag("Sage")
                                
                            Text("Soldier").foregroundColor(Color.accentColor)
                                .tag("Soldier")
                            
                            Text("Acolyte").foregroundColor(Color.accentColor).tag("Acolyte")
                                
                        }
                        .pickerStyle(.wheel)
                        
                        
                        .onChange(of: selectiontre) { select in
                            proficiencies = backgrounds.storie.first(where: { $0.name == "\(select)"}) ?? nil
                            print(select)
                        }
                        if proficiencies?.tools?.prof.count ?? 0 > 1 {
                            Picker("Toolsprof", selection: $selectionquattro) {
                                Text("Choose Tool Proficiences")
                                    .tag("Choose Tool Proficiences")
                                
                                Text("Dice Set").tag("Dice Set")
                                Text("Dragonchess Set").tag("Dragonchess Set")
                                Text("Playing Card Set").tag("Playing Card Set")
                                Text("Three-Dragon Ante Set").tag("Three-Dragon Ante Set")
                            }
                            
                            .pickerStyle(.menu)
                            .preferredColorScheme(.dark)
                            
                            
                            
                        }
                        else {
                            Text("\(proficiencies?.tools?.prof[0] ?? "")")
                            
                                .foregroundStyle(Color.accentColor)
                        }
                        
                        if proficiencies?.tools?.prof2.count ?? 0 > 1 {
                            Picker("Toolsprof", selection: $selectionquattro) {
                                Text("Choose Tool Proficiences").tag("Choose Tool Proficiences")
                                Text("Alchemist's Supplies").tag("Alchemist's Supplies")
                                Text("Brewer's Supplies").tag("Brewer's Supplies")
                                Text("Calligrapher's Supplies").tag("Playing Card Set")
                                Text("Carpenter's Tools").tag("TCarpenter's Tools")
                            }
                            .pickerStyle(.automatic)
                            //.preferredColorScheme(.dark)
                            .foregroundColor(Color("AccentColor"))
                            
                            
                            
                        }
                        
                        else {
                            Text("\(proficiencies?.tools?.prof2[0] ?? "")")
                            
                                .foregroundStyle(Color.accentColor)
                        }
                        
                        
                        
                        if proficiencies?.skills?.prof.count ?? 0 > 1 {
                            Picker("Skillsprof", selection: $selectioncinque) {
                                Text("Choose Skill Proficiences").tag("Choose Skill Proficiences")
                                Text("Arcana").tag("Arcana")
                                Text("Investigation").tag("Investigation")
                                Text("Religion").tag("Religion")
                                Text( "Survival").tag("Survival")
                                
                            }
                            
                            .pickerStyle(.automatic)
                            //.preferredColorScheme(.dark)
                            .foregroundColor(Color.accentColor)
                            
                        }
                        else {
                            Text("\(proficiencies?.skills?.prof[0] ?? "")")
                            
                                .foregroundStyle(Color.accentColor)
                        }
                        
                        Spacer(minLength: 100)
                        Text("Final Descriptions")
                            .foregroundStyle(Color.accentColor)
                            .padding(.trailing,UIScreen.main.bounds.width/1.8)
                        
                        
                        Line()
                            .stroke()
                            .foregroundStyle(Color.accentColor)
                       
                        .frame(height: 10)
                        Button(action: {}, label: {
                            Rectangle()
                            
                                .fill(Color.dietro)
                                .frame(width: 350,height: 40)
                            
                                .overlay(alignment: .leading,
                                         content: {
                                    HStack {
                                        Text("Physical Characteristics")
                                            .foregroundColor(Color.accentColor)
                                            .padding(.leading)
                                        
                                        
                                        Image(systemName: "chevron.forward")
                                            .padding(.leading,UIScreen.main.bounds.width/3.4)
                                        
                                    }
                                    
                                })
                        })
                        Button(action: {}, label: {
                        Rectangle()
                        
                            .fill(Color.dietro)
                            .frame(width: 350,height: 40)
                        
                            .overlay(alignment: .leading,
                                     content: {
                                HStack {
                                    Text("Character Details")
                                        .foregroundColor(Color.accentColor)
                                        .padding(.leading)
                                    
                                        Spacer()
                                        Image(systemName: "chevron.forward")
                                            .padding()
                                }
                            })
                                })
                        Button(action: {}, label: {
                        Rectangle()
                        
                            .fill(Color.dietro)
                            .frame(width: 350,height: 40)
                        
                            .overlay(alignment: .leading,
                                     content: {
                                HStack {
                                    Text("Notes")
                                        .foregroundColor(Color.accentColor)
                                        .padding(.leading)
                                    
                                        Spacer()
                                        Image(systemName: "chevron.forward")
                                            .padding()
                                }
                                
                            })
                                })

                    }
                }
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
                        
                        NavigationLink("Done", destination: Page_1_alt())
                        
                    }
                }
        }
    }
    
}
#Preview {
    Page_3()
}

