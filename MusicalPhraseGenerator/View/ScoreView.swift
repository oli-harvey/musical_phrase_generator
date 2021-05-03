//
//  ContentView.swift
//  MusicalPhraseGenerator
//
//  Created by Oliver Harvey on 20/02/2021.
//

import SwiftUI

struct ScoreView: View {
    let score = Score(stave: Stave(lines: 6),
                      clef: .treble,
                      notes: Note.fanfare2())
    
    var body: some View {
        ZStack {
            score.stave.notation
                .padding()
            HStack{
                ForEach(score.notes) { note in
                    note.notation
                }
            }
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}

