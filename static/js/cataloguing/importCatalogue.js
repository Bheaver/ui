$(document).ready(function(){
    $("#importButton").click(function(event){
        var requestData = $("#rawRecordTextArea").val();
        $.ajax({
            url: "http://localhost:8082/cataloguing/parseiso2709",
            type: "POST",
            data: requestData,
            dataType: "json",
            headers: {
                "Content-Type":"application/x-www-form-urlencoded",
                "token": window.jwtToken
            },
            success: function(data){
                fillRecordsData(data)
            },
            error: function(error){
                console.error(error)
            }
        });
    });
});

function fillRecordsData(data){
    $.each(data, function(index,record){
        console.log(record)
    });
}