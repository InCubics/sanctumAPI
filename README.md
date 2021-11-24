<h1 align="center" color="lightblue" style="color:lightblue;">SanctumA&pi;</h1>


## About SanctumA&pi;

SanctumApi 2021 is a API-server that uses Sanctum-tokens and has basic usages of: find, all and CRUD.
The demo contains data where customers can order beers-products via an employee.

It calls API-requests dynamically to all existing models and checks also if data is valid.
To setup your own API-server, there are just several small steps required:
1. Just make your database-tables with data,
2. polulate your data in the database tables,
3. create Models as always (optional: with there relations),
4. add FormRequests (validation).
if you want requests ro add related data, there are two extra line required in a Model.

The response contains always a data-key with data or a boolean as value,
an request-key with the submitted data 
and a meta-key with additional data (eq: success, validation-errors and more).
Include in the request-header a key: 'Accept' with the value: 'application/json'.
All requests will provide a json-response.



## Demo-version

Read the how-to on:
**[sanctumAPI demo](https://sanctumapi.incubics.net/)**

Use Postman and provided export with API-requests for testing


## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

