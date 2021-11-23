//
//  ReportsListView.swift
//  ReportAbstractionExample
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ReportsListView: View {
    var body: some View {
        List {
           // Iterate over the list of student reports
            // First argument is the list to iterate over
            // e.g: listOfReports
            // NOTE: The data type in the list must be uniquely identifiable
            // second argument is a block of code for what to show
            // this argument is provided as a " trailing closure"
            // "current report" will store each indivitual report
            // from the list as it literates
            ForEach(listOfReports) { currentReport in
                
                
                NavigationLink(destination: {
                    Text("\(currentReport.grade)")
                }, label: {
                    Text(currentReport.name)
                    
                })
                
                
            }
        }
        .navigationTitle("Reports")
        
    }

}

struct ReportsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReportsListView()
        }
    }
}
