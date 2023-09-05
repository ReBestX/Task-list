<?php

use App\Http\Controllers\TaskController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect()->route("tasks.index");
});
Route::get("/tasks",[TaskController::class,"index"])->name("tasks.index");

// create task route
Route::get("/tasks/create",[TaskController::class,"create"])->name("tasks.create");
Route::post("/tasks",[TaskController::class,"store"])->name("tasks.store");

// edit task route
Route::get("/tasks/{task}/edit",[TaskController::class,"edit"])->name("tasks.edit");
Route::put("/tasks/{task}/edit",[TaskController::class,"update"])->name("tasks.update");

Route::put("/tasks/{task}/toggle-complete",[TaskController::class,"toggle"])->name("tasks.toggle");

// delete task route
Route::delete("/tasks/{task}/delete",[TaskController::class,"delete"])->name("tasks.destroy");

Route::get("/tasks/{task}",[TaskController::class,"show"])->name("tasks.show");
