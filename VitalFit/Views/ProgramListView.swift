//  ProgramListView.swift
//  VitalFit
//  Created by Melody Flavel on 29/5/2024.

import SwiftUI

struct ProgramListView: View {
    
    @EnvironmentObject var programListViewModel: ProgramListViewModel
    let programs: [ProgramModel] = DataProvider.getPrograms()
    //@Binding var exerciseID: String
    //@State var selectedProgram: ProgramModel
    
    var body: some View {
        
        ZStack {
            Color.backgroundColour
            .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                    VStack (spacing: 5) {
                        ForEach(DataProvider.programs) { program in
                            ProgramListRowView(programName: program.name, programID: program.id)
                        }
                        .onDelete(perform: programListViewModel.deleteProgram)
                        .onMove(perform: programListViewModel.moveProgram)
                    }
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(
                    leading:
                    NavigationLink(destination: HomeView()) {
                        Image("BackIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    },
                    trailing: Image("EditIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                )
                Spacer()
                NavigationLink(destination: AddProgramView()) {
                    Image("AddIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}
    
   /* #Preview {
        NavigationView{
            ProgramListView()
                .environmentObject(ProgramListViewModel())
        }
    }
*/
