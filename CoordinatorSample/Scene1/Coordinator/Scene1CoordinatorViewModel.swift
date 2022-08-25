//
//  Scene1CoordinatorViewModel.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI
import Combine

enum Scene1NavigationItem: NavigationItemProtocol {
    case scene2(_ text: String)
    
    var id: UUID {
        UUID()
    }
    
    @ViewBuilder
    func nextView() -> some View {
        switch self {
        case let .scene2(text):
            Scene2Factory.build(text: text)
        }
    }
}

enum Scene1SheetItem: NavigationItemProtocol {
    case scene3
    
    var id: UUID {
        UUID()
    }
    
    @ViewBuilder
    func nextView() -> some View {
        switch self {
        case .scene3:
            Scene3Factory.build()
        }
    }
}

protocol Scene1CoordinatorViewModelProtocol: ObservableObject {
    var navigationLinkItem: Scene1NavigationItem? { get set }
    var navigationSheetItem: Scene1SheetItem? { get set }
    var navigationItemLinkCases: [Scene1NavigationItem] { get }
    func onAppear()
}

protocol Scene1CoordinatorProtocol {
    func navigateTo(_ item: Scene1NavigationItem)
    func present(_ item: Scene1SheetItem)
}

final class Scene1CoordinatorViewModel: Scene1CoordinatorViewModelProtocol {
    @Published var navigationLinkItem: Scene1NavigationItem?
    @Published var navigationSheetItem: Scene1SheetItem?
    
    var navigationItemLinkCases: [Scene1NavigationItem] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        $navigationLinkItem
            .filter({ $0 != nil })
            .sink(receiveValue: {
                guard let item = $0 else { return }
                self.navigationItemLinkCases.append(item)
            })
            .store(in: &cancellables)
    }
    
    func onAppear() {
        navigationItemLinkCases = []
    }
}

extension Scene1CoordinatorViewModel: Scene1CoordinatorProtocol {
    func navigateTo(_ item: Scene1NavigationItem) {
        navigationLinkItem = item
    }
    
    func present(_ item: Scene1SheetItem) {
        navigationSheetItem = item
    }
}
