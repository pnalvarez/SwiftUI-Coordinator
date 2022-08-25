//
//  Scene3CoordinatorView.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

struct Scene3CoordinatorView<ViewModel: Scene3CoordinatorViewModelProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    let content: Scene3View<Scene3ViewModel>
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                content
                    .navigationBarTitle("Scene3")
            }
        }
    }
}

struct Scene3CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        Scene3Factory.build()
    }
}
