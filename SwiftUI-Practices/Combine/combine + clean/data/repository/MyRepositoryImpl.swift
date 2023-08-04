//
//  MyRepositoryImpl.swift
//  MyCodes
//
//  Created by Htet Moe Phyu on 25/04/2023.
//

import Foundation
import Combine

struct MyRepositoryImpl : MyRepository{
    @Inject var dataSource : MyDataSource
    
    func fetchPosts() -> AnyPublisher<[Post], Error> {
        dataSource.fetchPosts()
    }
}
