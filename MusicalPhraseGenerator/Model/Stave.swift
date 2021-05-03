import SwiftUI
import Foundation

struct Stave {
    var lines: Int = 6
    var width: CGFloat = 300
    
    var notation: some View {
        VStack {
            Spacer()
            ForEach(0 ..< lines)  { _ in
                RoundedRectangle(cornerRadius: 4)
                    .frame(height: 5)
                    .padding()
            }
            Spacer()
        }
    }
}
