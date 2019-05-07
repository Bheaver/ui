$(document).ready(function(){
    $("#materialTypeSelect").select2({
       theme: "classic"
     })
     //$(".selectpicker").selectpicker();
     $("#bibliographicLevelSelect").select2({
        theme: "classic"
      })
     $("#templateSelect").select2({
         theme: "classic"
       })
    $('#selectTag').select2({
        dropdownParent: $('#exampleModal'),
        theme: "classic"
    })
    $.ajax({
        url: catalogueURL+"/cataloguing/initialLoad",
        type: "POST",
        dataType: "json",
        headers: {
            "token": window.jwtToken,
            "libCode": getCookie("libCode")
        },
        success: function(data){
            fillinInitialData(data);
        },
        error: function(error){
            console.error(error)
        }
    });

    $.ajax({
            url: catalogueURL+"/cataloguing/listTags",
            type: "GET",
            dataType: "json",
            headers: {
                "token": window.jwtToken,
                "libCode": getCookie("libCode")
            },
            success: function(data){
                fillinTags(data);
               // $('#exampleModal').modal('handleUpdate')
            },
            error: function(error){
                console.error(error)
            }
        });
    $("#selectTag").on('select2:select', function(event){
        var data = event.params.data;
        getSubFieldsForSelectedTag(data.id)
    })

});

function getSubFieldsForSelectedTag(tagSelected){
    console.log("tagSelected...."+tagSelected)
    $.ajax({
        url: catalogueURL+"/cataloguing/getTagDetails?tag="+tagSelected,
        type: "GET",
        dataType: "json",
        headers: {
            "token": window.jwtToken,
            "libCode": getCookie("libCode")
        },
        success: function(data){
            console.log(data)
            setTagInformation(data)
            fillIndicator1(data)
            fillIndicator2(data)
        },
        error: function(error){
            console.error(error)
        }
    })
}
function fillIndicator1(data){
    if(data.indicator1.input){
        $("#indicator1Input").show();
        $("#indicator1Selection").hide();
    }else{
        $("#indicator1Input").hide();
        $("#indicator1Selection").show();
    }
    $("#i1GeneralInformationdefinition").text(data.indicator1.userDefinition == '' ? data.indicator1.definition : data.indicator1.userDefinition)
    $("#i1GeneralInformationdescription").text(data.indicator1.userDescription == '' ? data.indicator1.description : data.indicator1.userDescription)

    var indi1Array = data.indicator1.indicator
    $("#indicator1Selection").empty()
    $.each(indi1Array, function(index,val){
        var option = $('<option/>',{
            text: val.userDefinition == '' ? val.definition : val.userDefinition,
            value: val.value,
            data: {
                "somedata": "11",
                "description": val.userDescription == '' ? val.description : val.userDescription
            }
        })
        option.data("somedata","11")
        $("#indicator1Selection").append(option)
    })
    $('#indicator1Selection').on('change',function() {
      console.log($(this).val());
      console.log($(this).data("somedata"));
    });
    //$("#indicator1Selection").selectpicker('refresh')

}
function fillSubFieldData(data){
    $.each(data.subFields, function(index,subData){

    })
}
function fillIndicator2(data){
    if(data.indicator2.input){
        $("#indicator2Input").show();
        $("#indicator2Selection").hide();
    }else{
        $("#indicator2Input").hide();
        $("#indicator2Selection").show();
    }
    $("#i2GeneralInformationdefinition").text(data.indicator2.userDefinition == '' ? data.indicator2.definition : data.indicator2.userDefinition)
    $("#i2GeneralInformationdescription").text(data.indicator2.userDescription == '' ? data.indicator2.description : data.indicator2.userDescription)

    var indi2Array = data.indicator2.indicator
    $("#indicator2Selection").empty()
    $.each(indi2Array, function(index,val){
        var option = $('<option/>',{
            text: val.userDefinition == '' ? val.definition : val.userDefinition,
            value: val.value,
            data: {
                "somedata": "11",
                "description": val.userDescription == '' ? val.description : val.userDescription
            }
        })
        option.data("somedata","11")
        $("#indicator2Selection").append(option)
    })
    $('#indicator2Selection').on('change',function() {
      console.log($(this).val());
      console.log($(this).data("somedata"));
    });
    //$("#indicator2Selection").selectpicker('refresh')

}
function setTagInformation(data){
    $("#tagInformationtag").text(data.tag.value);
    $("#tagInformationdefinition").text(data.tag.userDefinition == '' ? data.tag.definition : data.tag.userDefinition)
    $("#tagInformationdescription").text(data.tag.userDescription == '' ? data.tag.description : data.tag.userDescription)
    $("#tagInformationrepeat").text(data.tag.repeat ? "Repeatable" : "Non Repeatable")
    $("#tagInformationexample").text(data.tag.userExamples == '' ? data.tag.examples : data.tag.userExamples)

}
function fillinInitialData(data){
    $("#materialTypeSelect").empty();
    $("#bibliographicLevelSelect").empty();
    $("#templateSelect").empty();

    $.each(data.BibliographicLevels, function(index, bibliographicLevel){
        $("#bibliographicLevelSelect").append(new Option(bibliographicLevel.value,bibliographicLevel.code))
    });

    $.each(data.MaterialTypes, function(index, materialType){
        $("#materialTypeSelect").append(new Option(materialType.value,materialType.code))
    });

    $.each(data.CatalogueTemplates, function(index, catalogTemplate){
            $("#templateSelect").append(new Option(materialType.description,materialType.name))
        });
}

function fillinTags(data){
    $("#selectTag").empty()
    $.each(data,function(index,value){
        $("#selectTag").append(new Option(value.definition,value.tag))
    })
}