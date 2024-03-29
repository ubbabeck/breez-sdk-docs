//
//  ServiceStatus.swift
//  
//
//

import Foundation
import BreezSDK

func webhook(sdk: BlockingBreezServices) throws {
    // ANCHOR: register-webook
    try sdk.registerWebhook(webhookUrl: "https://yourapplication.com")    
    // ANCHOR_END: register-webook   
}

func paymentWebhook(sdk: BlockingBreezServices) throws {
    // ANCHOR: register-payment-webook
    try sdk.registerWebhook(webhookUrl: "https://your-nds-service.com/notify?platform=ios&token=<PUSH_TOKEN>")  
    // ANCHOR_END: register-payment-webook
}
