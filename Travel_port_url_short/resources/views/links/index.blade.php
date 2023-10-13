{{-- <x-app-layout>
    <x-slot name="header">
        My Links
    </x-slot>
    <div class="max-w-6xl mx-auto mt-8">
        <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
  <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
    <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
      <table class="min-w-full divide-y divide-gray-200">
        <thead class="bg-gray-50 dark:bg-gray-600 dark:text-gray-200">
          <tr>
            <th scope="col"
             class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Id</th>
            <th scope="col"
             class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Original Url</th>
            <th scope="col" 
            class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">
            Short Url
          </th>
           <th scope="col" 
            class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">
            Visits
          </th>
          </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
          <tr></tr>
          @foreach ($links as $link)
              <tr>
            <td class="px-6 py-4 whitespace-nowrap">{{ $link->id }}</td>
            <td class="px-6 py-4 whitespace-nowrap">{{ $link->original_url}}</td>
            <td class="px-6 py-4 whitespace-nowrap">{{ url($link->short_url) }}</td>
            <td class="px-6 py-4 whitespace-nowrap">{{ $link->visits }}</td>
          </tr>
          @endforeach
          
        </tbody>
      </table>
      <div class="m-2 p-2">
        {{ $links->links() }}
      </div>
    </div>
  </div>
</div>

    </div>
</x-app-layout> --}}

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <x-app-layout>
        <x-slot name="header">
            My Links
        </x-slot>
        <div class="container mt-8">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Original Url</th>
                            <th scope="col">Short Url</th>
                            <th scope="col">Visits</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($links as $link)
                            <tr>
                                <td>{{ $link->id }}</td>
                                <td>{{ $link->original_url }}</td>
                                <td>{{ url($link->short_url) }}</td>
                                <td>{{ $link->visits }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="m-2 p-2">
                {{ $links->links() }}
            </div>
        </div>
    </x-app-layout>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
</body>

</html>
