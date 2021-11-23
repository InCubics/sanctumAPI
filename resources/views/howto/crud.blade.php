@extends('layouts.api_webfront')

@section('content')
    <h2>How to use Altering data</h2>
    <div class="links">
        <a href="{{url('/howto')}}">⬅️ back</a>
    </div>
    <div class="text-left m-b-md" style="height: 500px; overflow: auto;">
        <i>Adding, updating and deleting records (CRUD)</i><br>
        <br>
        Make sure that columnnames to be altered are set to <a href="https://laravel.com/docs/8.x/eloquent#mass-assignment">'fillable'</a>
        in the Model.<br>
        <br>

        <br>
        The url contains the name of the Model with the option you want, some examples:<br>
        <table class="table table-striped" >
            <thead>
            <tr>
                <th colspan="3" >create a record</th>
            </tr>
            </thead>
            <tbody>

            <tr>
                <th class="w-25">POST</th>
                <td>/api/user</td>
                <td>/api/beer</td>
            </tr>

            <tr>
                <td>table fieldnames</td>
                <td colspan="10">&lt;your data&gt; (for each fillable table-column)</td>
            </tr>
            <tr>
                <td colspan="3">if adding data; make sure that the <a href="https://laravel.com/docs/8.x/validation#form-request-validation">
                        Request-class</a> exists; /app/Http/Requests/&lt;ClassName&gt;Request.php<br>
                    the class-name must match an Model-name</td>
            </tr>
            </tbody>
        </table>
<br>
        <table class="table table-striped" id="update">
            <thead>
            <tr>
                <th colspan="3" >updating a record</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th class="w-25">POST</th>
                <td>/api/user/5</td>
                <td>/api/beer/20</td>
            </tr>
            <tr>
                <td>table fieldname(s)</td>
                <td colspan="10">&lt;your data&gt; (for each fillable table-column)</td>
            </tr>
            <tr>
                <td>_method</td>
                <td colspan="10">PUT</td>
            </tr>
            <tr>
                <td colspan="3">make sure <a href="https://laravel.com/docs/8.x/validation#creating-form-requests">
                        Requests-class</a> exists; /app/Http/Requests/&lt;ModelName&gt;Request.php<br>
                    the class-name must match the Model-name</td>
            </tr>
            </tbody>
        </table>
        <br>
        <table class="table table-striped" id="update_pivot">
            <thead>
            <tr>
                <th colspan="3" >updating a record with pivot</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th class="w-25">POST</th>
                <td>/api/order/6/beers/156</td>
                <td>order-id 6 with relation beer-id 156/td>
            </tr>
            <tr>
                <td>table fieldname(s) in order</td>
                <td colspan="10">&lt;your data&gt; (for each fillable Model-column)</td>
            </tr>
            <tr>
            <tr>
                <td>optional: table fieldname(s) in pivot-table</td>
                <td colspan="10">&lt;your data&gt for eq: order_beer; (named in the relation of the Model)</td>
            </tr>
            <tr>
                <td>_method</td>
                <td colspan="10">PUT</td>
            </tr>
            <tr>
                <td colspan="3">make sure <a href="https://laravel.com/docs/8.x/validation#creating-form-requests">
                        Requests-class</a> exists; /app/Http/Requests/&lt;ModelName&gt;Request.php<br>
                    the class-name must match the Model-name</td>
            </tr>            <tr>
                <td colspan="3">Models that have a pivot-relations need:<br>
                    ->withPivot('amount','price')><br>
                    to access the pivot-data<br><br>
                    And additional:<br>
                    public $pivotFields     = ['amount','price'];              // specific keys required to fill fields in pivot-table
                </td>
            </tr>
            </tbody>
        </table>
<br>
        <table class="table table-striped" id="delete">
            <thead>
            <tr>
                <th colspan="3" >delete a record (forced)</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th class="w-25">DELETE</th>
                <td>/api/user/5</td>
                <td>/api/beer/20</td>
            </tr>
            </tbody>
        </table>
<br>
        <table class="table table-striped" id="delete">
            <thead>
            <tr>
                <th colspan="3" >delete an pivot relation</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th class="w-25">DELETE</th>
                <td>/api/order/6/beer/156</td>
                <td>removes record in pivot table with order-id 6 and beer-id 156</td>
            </tr>
            </tbody>
        </table>
<br>
            </tbody>
        </table>
    </div>
@endsection
