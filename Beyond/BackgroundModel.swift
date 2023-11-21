//
//  BackgroundModel.swift
//  Beyond
//
//  Created by Giulia Di Meo on 17/11/23.
//

import Foundation
import SwiftUI

class BackgroundModel {
    
    var storie:[Backgrounds] { return [
        Backgrounds(name:"Acolyte", skills: Skills(prof: ["Skill Proficiences: Insight, Religion"]), tools: Tool (prof: [""],prof2: [""])),
        Backgrounds(name:"Criminal/Spy", skills: Skills(prof: ["Skill Proficiences: Deception, Stealth"]), tools: ladro ),
        Backgrounds(name:"Folk Hero", skills: Skills(prof: ["Skill Proficiences: Animal Handling,Survival"]), tools: eroesoldato),
        Backgrounds(name:"Haunted One", skills: ricercato, tools: Tool(prof: [""],prof2: [""])),
        Backgrounds(name:"Sage",skills: Skills (prof: ["Skill Proficiences: History, Arcana"]), tools: Tool(prof: [""],prof2: [""])),
        Backgrounds(name:"Soldier", skills: Skills (prof: ["Skill Proficiences: History,Arcana"]), tools: eroesoldato),
        Backgrounds(name: "Noble", skills: Skills (prof: ["Skill Proficiencies: History, Persuasion"]), tools: ladro)
        
        
    ]}
    
    let ladro: Tool = Tool( prof: [
        "Dice Set",
        "Dragonchess Set",
        "Playing Card Set",
        "Three-Dragon Ante Set"
    ],prof2: [""])
    
    
    let eroesoldato: Tool =  Tool(prof: [""], prof2: [
       "Alchemist's Supplies",
       "Brewer's Supplies",
       "Calligrapher's Supplies",
       "Carpenter's Tools",
       "Cartogtapher's Tools",
       "Cobbler's Tools",
       "Cook's Utensilis",
       "Jeweler's Tools",
       "Leatherworker's Tools",
       "Mason's Tools",
       "Painter's Supplies",
       "Potter's Tools",
       "Smith's Tools",
       "Thinker's Tools",
       "Waever's Tools",
       "Woodcarver's Tools"
        
    ])
    
    let ricercato: Skills = Skills(prof: [
        "Arcana",
       "Investigation",
        "Religion",
        "Survival",
    ])
}
