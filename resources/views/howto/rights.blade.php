
@extends('layouts.api_webfront')

@section('content')
    <h2>How to use the seeded Rights</h2>
    <div class="links">
        <a href="{{url('/howto')}}">⬅️ back</a>
    </div>
    <div class="text-left m-b-md" style="height: 500px; overflow: auto;">
        <i>The users on this demo API-server</i><br>
        <br>
        Users has a on-on-one relation with the employee- or customer-Model.<br>
        For an order an employee-id and a customer-id are requites.
        On an order beers can be ordered in an many-to-many relation.
        <br><br>
        <i class="text-red-500">Roll-based-access-control is NOT implemented.</i>
        <br>
    <table class="table table-striped w-100">
            <tbody>
            <table class="table table-striped" >
                <thead>
                <tr>
                    <th colspan="3" >User-list</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td >root@app.com</td>
                    <td colspan="10" >password</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>admin@app.com</td>
                    <td colspan="10" >password</td>
                    <td></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td >user@app.com</td>
                    <td colspan="10" >password</td>
                    <td></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td >visitor@app.com</td>
                    <td colspan="10" >password</td>
                    <td></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>user6@app.com - user54@app.com</td>
                    <td colspan="10" >password</td>
                    <td></td>
                </tr>
                </tbody>
            </table>
            <br>
            </tbody>
    </table>
@endsection
