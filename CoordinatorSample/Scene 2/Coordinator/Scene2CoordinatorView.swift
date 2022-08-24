//
//  Scene2CoordinatorView.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

struct Scene2CoordinatorView<ViewModel: Scene2CoordinatorViewModelProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    let content: Scene2View<Scene2ViewModel>
    
    var body: some View {
        NavigationView {
            content
                .navigationTitle("Scene 2")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Scene2CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        Scene2Factory.build()
    }
}
