//  WorkoutListView.swift
//  VitalFit
//  Created by Melody Flavel on 29/5/2024.

import SwiftUI

struct NewWorkoutListView: View {
    
    @Binding var newProgram: ProgramModel
    @Binding var programID: String
    @Binding var exerciseID: String
    //@Binding var newWorkoutListViewModel: WorkoutListViewModel
    @EnvironmentObject var workoutListViewModel: WorkoutListViewModel
    //var tempProgram: ProgramModel
    //@EnvironmentObject var workoutListViewModel: WorkoutListViewModel
    
    /*@State var workouts: [WorkoutModel] = [
        WorkoutModel(name: "This is the first workout."),
        WorkoutModel(name: "This is the second workout."),
        WorkoutModel(name: "This is the third workout.")
    ]*/
    
    var body: some View {
        /* NavigationView{
            List{
                ForEach(workouts) { workout in
                    Text("Hi")
                    //WorkoutListRowView(title: workouts)
                }
            }
        }
        .navigationTitle("Workouts")
        .navigationTitle("Programs")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddWorkoutView())
        ) */
        ScrollView {
            VStack (spacing: 5) {
                //Text(newProgram.name)
                ForEach(workoutListViewModel.workouts) { workout in
                    WorkoutListRowView(workoutName: workout.name, workoutID: workout.id, programID: $programID)
                }
                    .onDelete(perform: workoutListViewModel.deleteWorkout)
                    .onMove(perform: workoutListViewModel.moveWorkout)
            }
        }
        .navigationTitle("Workouts")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddWorkoutView(program: $newProgram))
        )
    }
}

/*#Preview {
    NavigationView{
        var previewNewProgram = ProgramModel(name: "Program", workouts: [])
        var previewNewWorkoutListViewModel = WorkoutListViewModel()
        
        NewWorkoutListView(newProgram: .constant(previewNewProgram))
            .environmentObject(WorkoutListViewModel())
    }
}*/
