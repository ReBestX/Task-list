<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function index(){
        $tasks = Task::paginate(10);
        return view("tasks.index",[
            "tasks" => $tasks
        ]);
    }
    public function show(Task $task) {
        return view("tasks.show",[
            "task" => $task
        ]);
    }
    public function create(){
        return view("tasks.create");
    }
    public function store(Request $request){
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'description' => 'required',
        ]);

        $task = Task::create([
            'title' => $validatedData['title'],
            'description' => $validatedData['description'],
            'completed' => false,
        ]);

        return redirect()->route('tasks.show', $task)
            ->with('success', 'Task created successfully.');
    }
    public function edit(Task $task){
        return view("tasks.edit",[
            "task" => $task
        ]);
    }
    public function update(Request $request, Task $task)
    {
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'description' => 'required',
        ]);

        $task->update([
            'title' => $validatedData['title'],
            'description' => $validatedData['description'],
        ]);

        return redirect()->route('tasks.show', $task)
            ->with('success', 'Task updated successfully.');
    }
    public function delete(Task $task){
        $task->delete();
        return redirect()->route("tasks.index")
            ->with("success", "Task deleted successfully.");
    }
    public function toggle(Task $task){
        $task->completed = !$task->completed;
        $task->save();
        return redirect()->back();
    }

}
