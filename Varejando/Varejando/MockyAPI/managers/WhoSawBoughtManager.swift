//
//  WhoSawBoughtManager.swift
//  Varejando
//
//  Created by Ruan Gustavo de Oliveira on 13/02/20.
//  Copyright © 2020 Ruan Gustavo de Oliveira. All rights reserved.
//

import Foundation

class WhoSawBoughtManager: ProductsSimpleManagerInput {
    var objects = [ProductSimpleAPIModel]()
    
    func getProducts(completion: @escaping ProductsSimpleHandler) {
        MockyAPI.shared.getAlsoSawBought(completion: { objects in
            self.objects = objects
            completion(objects)
        })
    }
}
