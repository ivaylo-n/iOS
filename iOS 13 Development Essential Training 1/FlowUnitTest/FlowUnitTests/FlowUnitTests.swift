//
//  FlowUnitTests.swift
//  FlowUnitTests
//
//  Created by Ivaylo on 8/14/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import XCTest

func testBook() {
    let book = Book()
    XCTAssertEqual(book.title, Book.default_title)
    let book2 = Book(title: "My Book", pageCount: 123)
    XCTAssertEqual(book2.pageCount, 123)
}
