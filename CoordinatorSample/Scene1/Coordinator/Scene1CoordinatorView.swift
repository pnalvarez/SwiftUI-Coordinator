//
//  Scene1CoordinatorView.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

struct Scene1CoordinatorView<ViewModel: Scene1CoordinatorViewModelProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    let content: Scene1View<Scene1ViewModel>
    
    var body: some View {
        NavigationView {
            ZStack {
                ForEach(viewModel.navigationItemLinkCases) { item in
                    NavigationLink(tag: item, selection: $viewModel.navigationLinkItem, destination: item.nextView) { EmptyView() }
                }
                content
                    .onAppear(perform: viewModel.onAppear)
                    .navigationTitle("Scene 1")
                    .navigationBarTitleDisplayMode(.inline)
                    .sheet(item: $viewModel.navigationSheetItem) { item in
                        item.nextView()
                    }
            }
        }
    }
}

struct Scene1CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        Scene1Factory.build()
    }
}
