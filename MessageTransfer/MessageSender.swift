//
//  MessageSender.swift
//  MessageTransfer
//
//  Created by Paul Young on 02/09/2014.
//  Copyright (c) 2014 CocoaFlow. All rights reserved.
//

import Foundation
import JSONLib

public protocol MessageSender {
    func send(channel: String, _ topic: String, _ payload: JSON?)
}

public protocol MessageSenderWithReceiver: MessageSender {
    var messageReceiver: MessageReceiver? { get set }
}
