//
//  BackView.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/27/24.
//

import Foundation
import SwiftUI
struct BackView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Back") {
            dismiss()
        }
    }
}
