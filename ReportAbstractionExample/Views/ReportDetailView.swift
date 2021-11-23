//
//  ReportDetailView.swift
//  ReportAbstractionExample
//
//  Created by Leo Lu on 2021-11-23.
//

import SwiftUI

struct ReportDetailView: View {
    
    //MARK: Stored properties
    let thisReport: Report
    
    //MARK: Computed properties
    
    var body: some View {
        ScrollView{
            VStack{
                Text(thisReport.name)
                
                Text("\(thisReport.grade)")
                
                Text(thisReport.comment)
            }
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //create an instanve of ReportDetailView and pass in
        ReportDetailView(thisReport: listOfReports.first!)
    }
}
