//
//  Scene2ViewModel.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

protocol Scene2ViewModelProtocol: ObservableObject {
    
}


final class Scene2ViewModel: Scene2ViewModelProtocol {
    private let coordinator: Scene2CoordinatorProtocol
    
    init(coordinator: Scene2CoordinatorProtocol) {
        self.coordinator = coordinator
    }
}
