//
//  LogHandler.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import Foundation

class LogHandler {
    
    private
    init() { }
    
    public static
    let shared = LogHandler()
    
    public
    func log(
        msg: String,
        file: String = #file,
        col: Int = #column,
        row: Int = #line,
        fun: String = #function
    ) {
        let className = (file as NSString).lastPathComponent
        print(
            "@_-_-","msg:",
            msg,
            "| file:",className,
            "| function:",fun,
            "| col:",col,
            "| row",row
        )
    }
    
}
