//
//  MessageReceiver.swift
//  MessageTransfer
//
//  Created by Paul Young on 02/09/2014.
//  Copyright (c) 2014 CocoaFlow. All rights reserved.
//

import Foundation
import JSONLib

public protocol MessageReceiver {
    func receive(channel: String, _ topic: String, _ payload: JSON?)
}

public protocol MessageReceiverWithSender: MessageReceiver {
    var messageSender: MessageSender? { get set }
}
