//
//  ContentView.swift
//  MusicalPhraseGenerator
//
//  Created by Oliver Harvey on 20/02/2021.
//

import SwiftUI

struct ContentView: View {
    var notes = Note.fanfare()
    var test = [
        1,2,3
    ]
    
    var body: some View {
        HStack{
            ForEach(notes) { note in
                note.duration.notation()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Note: Identifiable, Hashable {
    var id = UUID()
    let pitch: Pitch
    let accidental: Accidental
    let duration: Duration
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
}

enum Pitch {
    case a, b, c, d, e, f, g, x
}

enum Accidental {
    case sharp, flat, natural
        
    func image() -> some View {
        switch self {
        case .sharp:
            return Text("#")
        case .flat:
            return Text("b")
        case .natural:
            return Text("")
        }
    }
}

enum Duration {
    case whole, half, quarter, eighth, sixteenth
    func notation() -> some View {
        switch self {
        case .whole:
                return Circle()
        case .half:
                return Circle()
        case .quarter:
                return Circle()
        case .eighth:
                return Circle()
        case .sixteenth:
                return Circle()
        }
    }
}
