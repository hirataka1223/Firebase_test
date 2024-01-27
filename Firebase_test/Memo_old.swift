//
//  memo.swift
//  Firebase_test
//
//  Created by Taka on 2023/12/30.
//

import SwiftUI

struct Memo_old: View {
    
    @State var fruits: [String] = ["Apple", "apple", "orange", "strawberry", "pineapple", "lemon"]
    @State var selection: String = "Apple"
    @State var btnOut:String = "Search"
    @State var inPut:String = ""
    @State var ttxt:String = ""
    @State var searchText:String = ""
    
    func find(value searchText: String, in array: [String]) -> Array<Int>?
    {
        var arr:Array<Int> = []
        
        for (index, value) in array.enumerated()
        {
            if value.localizedStandardContains(searchText) {
                
                arr.append(index)
            }
        }
        return arr
    }
    
    var body: some View {
        SinglePicker(fruits: fruits, selection: $selection)
    }
}
    
    struct SinglePicker: View {
        let fruits: [String]
        @Binding var selection:String
        
        var body: some View {
            GeometryReader {geometry in
                Picker(" Memo", selection: self.$selection) {
                    ForEach(0..<self.fruits.count) { row in
                        Text(verbatim: self.fruits[row]).tag(self.fruits[row])
                    }
                }
            }
        }
    }
    
    struct Memo_old_Previews: PreviewProvider {
    static var previews: some View {
        Memo_old()
    }
}
