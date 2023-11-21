//
//  Backgrounds.swift
//  Beyond
//
//  Created by Giulia Di Meo on 17/11/23.
//

import Foundation
import SwiftUI


struct Backgrounds: Identifiable {
    var id: UUID=UUID()
    var name: String?
    var skills: Skills?
    var tools: Tool?
}

struct Tool: Identifiable {
    var id: UUID = UUID()
    var prof: [String]
    var prof2: [String]
    
}
struct Skills : Identifiable {
    var id: UUID = UUID()
    var prof: [String]
}
