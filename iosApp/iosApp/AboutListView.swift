//
//  AboutListView.swift
//  iosApp
//
//  Created by Gabriel Ferreira on 26/10/24.
//  Copyright © 2024 orgName. All rights reserved.
//
import shared
import SwiftUI
import UIKit

struct AboutListView: View {
    private struct RowItem: Hashable{
        let title: String
        let subtitle: String
    }
    
    private let items: [RowItem] = {
        let platform = Platform()
        platform.logSystemnInfo()
        
        var result: [RowItem] = [
            .init(
                title: "Operating System",
                subtitle: UIDevice.current.systemVersion
            ),
            .init(
                title: "Device",
                subtitle: UIDevice.current.model
            ),
            .init(
                title: "Density",
                subtitle: "@\(platform.density)x"
            )
        ]
        return result
    }()
    
    var body: some View{
        List {
            ForEach(items, id: \.self) { item in
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                    Text(item.subtitle)
                        .font(.body)
                        .foregroundStyle(.primary)
            }
            .padding(.vertical, 4)
            }
        }
    }
}

#Preview {
    AboutListView()
}
