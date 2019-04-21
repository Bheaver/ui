var recordsArray = new Array();
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
                console.log(recordsArray);
            },
            error: function(error){
                console.error(error)
            }
        });
    });
    $("#tableBody").on("click",".viewButton",function(event){
            viewRecord(event.currentTarget.id);
    });

});

function fillRecordsData(data){
    recordsArray.length=0;
    $("#tableBody").empty();
    $.each(data, function(index,record){
        recordsArray[index] = record;
        var title = "", titlea="", titleb="", titlec="";
        var dataFieldsArr = record.dataFields;
        $.each(dataFieldsArr, function(indexIn, dataField){
            if(dataField.tag == "245"){
                $.each(dataField.subfields,function(indexS, subField){
                    if(subField.identifier == "a"){
                        titlea = subField.data;
                    }
                    if(subField.identifier == "b"){
                        titleb = subField.data;
                    }
                    if(subField.identifier == "c"){
                        titlec = subField.data;
                    }
                });
            }
        });
        title = titlea+titleb+titlec;
        var tdInd = "<td>"+(index+1)+"</td>"
        var tdData = "<td>"+title+"</td>"
        var editButton = '<a id="editButton-'+index+'" href="javascript:;" class="btn btn-outline red editButton">Edit<i class="fa fa-edit"></i></a>';
        var viewButton = '<a id="viewButton-'+index+'" href="javascript:;" class="btn btn-outline yellow viewButton">View<i class="fa fa-search"></i></a>'
        var tdAction = '<td>'+editButton+viewButton+'</td>'
        var tr = "<tr>"+tdInd+tdData+tdAction+"</tr>"
        $("#tableBody").append(tr);
    });
}
function getRecord(id){
    var idNumber = id.split("-")[1];
    return recordsArray[idNumber];
}
function viewRecord(id){
    var record = getRecord(id);

    $("#leaderContent").empty()
    $("#leaderContent").text(record.leader)

    $("#controlFieldsContent").empty()
    $.each(record.controlFields,function(index,controlField){
        $("#controlFieldsContent").append("<b>"+controlField.tag+"</b> "+controlField.data+"<br>");
    });

    $("#dataFieldsContent").empty()
    $.each(record.dataFields,function(index,dataField){
        if(!dataField.tag.startsWith("9")){
            $("#dataFieldsContent").append("<b>"+dataField.tag+"</b> "+dataField.indicator1+" "+dataField.indicator2+"<br>");
                $.each(dataField.subfields,function(index1,subField){
                    $("#dataFieldsContent").append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>"+subField.identifier+"</b>  "+subField.data+"<br>")
                });
        }
    });

    $("#localFieldsContent").empty()
        $.each(record.dataFields,function(index,dataField){
            if(dataField.tag.startsWith("9")){
                $("#localFieldsContent").append("<b>"+dataField.tag+"</b> "+dataField.indicator1+" "+dataField.indicator2+"<br>");
                    $.each(dataField.subfields,function(index1,subField){
                        $("#localFieldsContent").append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>"+subField.identifier+"</b>  "+subField.data+"<br>")
                    });
            }
        });

    $('#viewRecord').modal()
}