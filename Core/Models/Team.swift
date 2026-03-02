import SwiftUI

enum NHLTeam: String, CaseIterable {
    case canadiens = "Montreal Canadiens"
    case oilers = "Edmonton Oilers"
    case mapleLeafs = "Toronto Maple Leafs"
    case canucks = "Vancouver Canucks"
    case senators = "Ottawa Senators"
    case jets = "Winnipeg Jets"

    var primaryColor: Color {
        switch self {
        case .canadiens:
            return Color.red
        case .oilers:
            return Color.blue
        case .mapleLeafs:
            return Color.blue
        case .canucks:
            return Color.green
        case .senators:
            return Color.red
        case .jets:
            return Color.blue
        }
    }
}