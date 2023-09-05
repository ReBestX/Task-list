@extends("layouts.app")
@section("title","Create Task")

@section("content")
    <div class="mb-2">
        <a href="{{route("tasks.index")}}" class="font-medium text-lg"><i class="fa-solid fa-arrow-left"></i> Back</a>
    </div>
    <h1 class="mb-4 text-2xl mt-1">Add New Task</h1>
    <form method="post" action="{{route("tasks.store")}}">
        @csrf
        <div class="mb-4">
            <label for="title">Title</label>
            <input type="text" name="title" id="title"
                class="@error("title") border-red-500 @enderror"
                value="{{old("title")}}"><br/>
            @error("title")
            <p class="error">{{$message}}</p>
            @enderror
        </div>
        <div class="mb-4">
            <label for="description">Description</label>
            <textarea name="description" id="description"
                class="resize-y min-h-[110px] w-full border @error('description') border-red-500 @enderror">{{ old("description") }}</textarea>
            @error("description")
            <p class="error">{{$message}}</p>
            @enderror
        </div>
        <div class="flex items-center gap-2">
            <button type="submit" class="btn">Create</button>
            <a href="{{ route('tasks.index') }}" class="link">Cancel</a>
        </div>
    </form>
@endsection
