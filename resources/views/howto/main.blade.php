@extends('layouts.api_webfront')

@section('content')
    <h2>How to use - Main</h2>
    <div class="text-left m-b-md" style="height: 555px; overflow: auto;">
        <i>SanctumApi 2021 is a API-server </i> that uses Sanctum-tokens and has basic usages of: find, all and CRUD.<br>
        The demo contains data where customers can order beers-products via an employee.<br>
        <br>
        It calls API-requests dynamically to all existing models and checks also if data is valid.<br>
        To setup your own API-server, there are just several small steps required:<br>
        <ol>
            <li> 1. Just make your database-tables with data,</li>
            <li> 2. polulate your data in the database tables,</li>
            <li> 3. create Models as always (optional: with there relations),</li>
            <li> 4. add FormRequests (validation).</li>
        </ol>
        if you want requests ro add related data, there are two extra line required in a Model.<br>
        <br>
        The response contains always a data-key with data or a boolean as value,<br>
        an request-key with the submitted data <br>
        and a meta-key with additional data (eq: success, validation-errors and more).<br>
        Include in the request-header a key: 'Accept' with the value: 'application/json'.<br>
        All requests will provide a json-response.<br>
        <br>
        There are some examples migrations and seeders available to show and test the all the functionalities.<br>
        <br>
        <p><i class="fa fa-refresh" style="font-size:13px;"></i> All data and accounts on this demo-server will be reset every two hour</p>
        <p><i class="fa fa-spinner fa-spin"></i>  You need a valid account to receive a token to use CRUD-functionality .</p>
        <p><i class="fa fa-spinner fa-spin"></i>  Download  a POSTMAN-<a href="{{url('postman_testing')}}">workspace</a>,
            then import it and test the Sanctum-API.</p>

        The following functionalities are possible:<br>

    <table class="table table-striped">
        <thead>
        <tr>
            <th colspan="5">functionalities API</th>
        </tr>
        </thead>
        @php $tables = glob(app_path('Models').'/*.php'); @endphp
        <tbody>
        <tr>
            <th class=""><a href="{{url('/howto/getdata')}}">👓 Selecting</a></th>
            <td><a href="{{url('/howto/getdata#find')}}">find</a></td>
            <td><a href="{{url('/howto/getdata#all')}}">all</a></td>
            <td><a href="{{url('/howto/getdata#with')}}">with relations</a></td>
            <td><a href="{{url('/howto/getdata#paginate')}}">pagination</a></td>

        </tr>
        <tr>
            <th><a href="{{url('/howto/crud')}}">🛠 Altering</a></th>
            <td><a href="{{url('/howto/crud#create')}}">create</a></td>
            <td><a href="{{url('/howto/crud#update')}}">update</a></td>
            <td><a href="{{url('/howto/crud#update_pivot')}}">update with pivot</a></td>
            <td><a href="{{url('/howto/crud#delete')}}">delete</a></td>
            <td></td>
        </tr>
        <tr>
            <th ><a href="{{url('/howto/oauth')}}">🔐 tokens</a></th>
            <td><a href="{{url('/howto/oauth#password')}}">password-grant</a></td>
            <td><a href="{{url('/howto/rights')}}">* accounts on demo</a></td>
            <td></td>
            <td><a href="{{url('/howto/getdata#invalid')}}">invalid requests</a></td>
        </tr>
        <tr>
            <th>🛢 current models</th>
            <td colspan="2">@foreach($tables as $table) {{pathinfo($table, PATHINFO_FILENAME).','}} @endforeach</td>
            <td colspan="2">db-tablenames; lowercase + appending 's'</td>
        </tr>
        <tr>
            <th>⛓ relations models</th>
            <td colspan="2">
                <b>User</b> has relation-method(s): employee, customer<br>
                <b>Beer</b> has relation-method: orders<br>
                <b>Customer</b> has relation-method(s): orders, user<br>
                <b>Employee</b> has relation-method(s): orders, user<br>
                <b>Order</b> has relation-method(s): beers, customer, employee<br>
            </td>
            <td colspan="2">db-tablenames; lowercase + appending 's'</td>
        </tr>
        </tbody>
    </table>
    </div>
@endsection
