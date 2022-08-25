//
//  Scene3View.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

struct Scene3View<ViewModel: Scene3ViewModelProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Scene3View_Previews: PreviewProvider {
    static var previews: some View {
        Scene3View(viewModel: Scene3ViewModel(coordinator: Scene3CoordinatorViewModel()))
    }
}
