//
//  Scene3ViewModel.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import Combine

protocol Scene3ViewModelProtocol: ObservableObject {
    
}

final class Scene3ViewModel: Scene3ViewModelProtocol {
    private let coordinator: Scene3CoordinatorProtocol
    
    init(coordinator: Scene3CoordinatorProtocol) {
        self.coordinator = coordinator
    }
}
