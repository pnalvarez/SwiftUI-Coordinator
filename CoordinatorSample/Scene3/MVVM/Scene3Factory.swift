//
//  Scene3Factory.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

enum Scene3Factory {
    static func build() -> Scene3CoordinatorView<Scene3CoordinatorViewModel> {
        let coordinator = Scene3CoordinatorViewModel()
        let viewModel = Scene3ViewModel(coordinator: coordinator)
        return Scene3CoordinatorView(viewModel: coordinator,
                                     content: Scene3View(viewModel: viewModel))
    }
}
