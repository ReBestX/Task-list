@extends("layouts.app")
@section("title","Tasks")

@section("content")
    <h1 class="mb-4 text-2xl font-medium">The list of tasks</h1>
    <nav class="mb-4">
        <a href="{{ route('tasks.create') }}" class="link">Add Task!</a>
    </nav>
    <ul>
        @foreach($tasks as $task)
        <div>
            <a href="{{ route("tasks.show", $task->id) }}" class=" {{$task->completed ? 'line-through' : '' }}">
                {{ $task->title }}
            </a>
        </div>
        @endforeach
        </ul>
    <nav class="mt-4">{{$tasks->links()}}</nav>
@endsection
