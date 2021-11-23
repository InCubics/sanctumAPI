@extends('layouts.api_webfront')

@section('content')
    <h2>How to use oAuth</h2>
    <div class="links">
        <a href="{{url('/howto')}}">⬅️ back</a>
    </div>
    <div class="text-left m-b-md" style="height: 500px; overflow: auto;">
        <i>Tokens via Sanctum</i><br>
        Sanctum provides a token in a short string. It's not fully oAuth v2, but fair enough for simple applications.<br>
        Submitting an account and password provides a valid token.
        <br>
        Request and send tokens only via SSL (https). Don't send accounts with passwords in plane text.<br>
        Specially not when the client is on a public wifi.<br>
        <br>

        <table class="table table-striped" id="password">
            <thead>
            <tr>
                <th colspan="3" class="font-bolder">get oAuth-token via password</th>
            </tr>
            <tr>
                <td colspan="3">
                    Password-grant.
                </td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th class="w-25">POST</th>
                <td>/api/signin</td>
                <td>provides a Bearer-token</td>
            </tr>
            <tr>
                <td>username</td>
                <td colspan="2">&lt;email-address of an user; `users`.`email`&gt;</td>
                <td></td>
            </tr>
            <tr>
                <td>password</td>
                <td colspan="2">&lt;password of an user; `users`.`password` (in plane text)&gt;</td>
                <td></td>
            </tr>
            </tbody>
        </table>

    </div>
@endsection
