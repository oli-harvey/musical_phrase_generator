import SwiftUI

enum Clef {
    case bass, treble
}

extension Clef {
    var notation: Image {
        switch self {
        case .bass:
            return Image("Bass Clef")
        case .treble:
            return Image("Treble Clef")
        }
        
    }
}
