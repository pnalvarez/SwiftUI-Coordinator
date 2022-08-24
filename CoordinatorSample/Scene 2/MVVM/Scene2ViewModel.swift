//
//  Scene2ViewModel.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

protocol Scene2ViewModelProtocol: ObservableObject {
    var text: String { get }
}


final class Scene2ViewModel: Scene2ViewModelProtocol {
    private let coordinator: Scene2CoordinatorProtocol
    var text: String
    
    init(coordinator: Scene2CoordinatorProtocol, text: String) {
        self.coordinator = coordinator
        self.text = text
    }
}
