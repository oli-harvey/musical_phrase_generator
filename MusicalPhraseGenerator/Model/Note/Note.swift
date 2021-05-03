//
//  Note.swift
//  MusicalPhraseGenerator
//
//  Created by Oliver Harvey on 20/03/2021.
//

import SwiftUI
import Foundation

struct Note: Identifiable, Hashable {
    var id = UUID()
    let pitch: Pitch
    let accidental: Accidental
    let duration: Duration
}

extension Note {
    var notation: Image {
        switch pitch {
        case .x:
            switch duration {
            case .whole:
                return Image("Rest semibreve")
            case .half:
                return Image("Rest minim")
            case .quarter:
                return Image("Rest crotchet")
            case .eighth:
                return Image("Rest quaver")
            case .sixteenth:
                return Image("Rest semiquaver")
            }
           
        default:
            switch duration {
            case .whole:
                return Image("Semibreve")
            case .half:
                return Image("Minim")
            case .quarter:
                return Image("Crotchet")
            case .eighth:
                return Image("Quaver")
            case .sixteenth:
                return Image("Semiquaver")
            }
        }
    }
}


extension Note {
    static func fanfare() -> [Note] {
        return [
            Note(
                pitch: .c,
                accidental: .natural,
                duration: .sixteenth),
            Note(
                pitch: .d,
                accidental: .natural,
                duration: .sixteenth),
            Note(
                pitch: .a,
                accidental: .natural,
                duration: .sixteenth),
            Note(
                pitch: .a,
                accidental: .natural,
                duration: .sixteenth),
            Note(
                pitch: .a,
                accidental: .natural,
                duration: .sixteenth)
        ]
    }
    static func fanfare2() -> [Note] {
        return [
            Note(
                pitch: .c,
                accidental: .natural,
                duration: .whole),
            Note(
                pitch: .d,
                accidental: .natural,
                duration: .whole),
            Note(
                pitch: .a,
                accidental: .natural,
                duration: .whole),
        ]
    }
    
}

