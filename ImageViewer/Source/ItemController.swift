//
//  ItemViewController.swift
//  ImageViewer
//
//  Created by Kristian Angyal on 01/07/2016.
//  Copyright © 2016 MailOnline. All rights reserved.
//

import UIKit

typealias Duration = TimeInterval

public protocol ItemController: class {

    var index: Int { get }
    var isInitialController: Bool { get set }
    weak var delegate: ItemControllerDelegate? { get set }
    weak var displacedViewsDatasource: GalleryDisplacedViewsDatasource? { get set }

    func fetchImage()

    func presentItem(alongsideAnimation: () -> Void, completion: @escaping () -> Void)
    func dismissItem(alongsideAnimation: () -> Void, completion: @escaping () -> Void)

    func closeDecorationViews(_ duration: TimeInterval)
}
