@extends('layouts.api_webfront')

@section('content')
    <h2>How to use Data-requests</h2>
    <div class="links">
        <a href="{{url('/howto')}}">⬅️ back</a>
    </div>
    <div class="text-left m-b-md" style="height: 500px; overflow: auto;">
        <i>Finding data</i><br>
        <br>
        To receive also additional data fro  related Models, add to yoyr model eq:<br>
        public $relatedModels   = ['customer','employee','beers']; // required to add relational-data to response (create a collection)<br>
        <br>
        The url contains the name of the Model with the option you want, some examples:<br>
        <br>

        <table class="table table-striped" >
            <thead>
            <tr>
                <th colspan="3" >Token</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th></th>
                <td class="text-red-500">No token required</td>
                <td colspan="10" >For this demo there are no routes that require a token to access data.</td>
            </tr>
            </tbody>
        </table>
<br>
    <table class="table table-striped" >
        <thead>
        <tr>
            <th colspan="10" id="find">find specific record by id</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>GET</th>
            <td>/api/user/2</td>
            <td>/api/beer/25</td>
        </tr>

        <thead>
        <tr>
            <th colspan="10" id="all">get all records</th>
        </tr>
        </thead>
        <tr>
            <th>GET</th>
            <td>/api/user</td>
            <td>/api/beer</td>
        </tr>

        </tbody>
    </table>
    </div>
@endsection
