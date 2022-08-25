//
//  NavigationItemProtocol.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

protocol NavigationItemProtocol: Hashable, Identifiable {
    associatedtype SomeView: View
    func nextView() -> SomeView
}

