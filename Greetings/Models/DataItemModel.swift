import Foundation
import SwiftUI

// This is the data model of the app.
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
