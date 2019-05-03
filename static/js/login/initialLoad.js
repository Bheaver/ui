$(document).ready(function() {
    $.getJSON("http://localhost:8081/aa/listLibraries",function(data){
        var libs = data.response;
        var select = $("#libraries-single-append-text")
        $.each(libs,function(index,value){
            console.log(value.libraryName)
            var option = new Option(value.libraryName,value.libraryCode);
            select.append(option);
        });
    });
    $("#LoginButton").click(function(event){
        var username = $("#username").val();
        var password = $("#password").val();
        var libCode = $("#libraries-single-append-text").val();
        var request = new Object();
        request.requestId = "";
        request.libCode = libCode;
        request.username = username;
        request.password = password;
        var requestText = JSON.stringify(request);
        console.log(requestText);
        $.ajax({
            url: "http://localhost:8081/aa/authenticate",
            type: "POST",
            data: requestText,
            headers: {
                "Content-Type":"application/json",
                "libCode": libCode
            },
            success: function(data){
                if(!data){
                    $("#LoginFailedMessage").show();
                    $("#LoginSuccessMessage").hide();
                }else{
                    window.jwtToken = data.jwtToken;
                    $("#token").val(data.jwtToken)
                    document.cookie = "token="+data.jwtToken;
                    document.cookie = "libCode="+libCode;
                    $("#LoginSuccessMessage").show();
                    $("#LoginFailedMessage").hide();
                    $("#LoginForm").submit();
                }

            },
            error: function(data){
                $("#LoginFailedMessage").show();
                $("#LoginSuccessMessage").hide();
            }
        });
        event.preventDefault();
    });
});