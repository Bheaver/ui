$(document).ready(function(){
    $("#materialTypeSelect").select2({
       theme: "classic"
     })
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
        url: "http://localhost:8082/cataloguing/initialLoad",
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
            url: "http://localhost:8082/cataloguing/listTags",
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
    $("#selectTag").change(function(event){
        $(" option:selected").each(function(){
            $("#selectedTagInfo").text($(this).val()+"("+$(this).text()+")")
            var tagSelected = $(this).val();
            getSubFieldsForSelectedTag(tagSelected)
        })
    })

});

function getSubFieldsForSelectedTag(tagSelected){

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