//la partie pour filtrer Segment selon la ligne de DAS Choisie
$(function () {
    $("#das td").click(function () {
        $(this).closest("tr").css('background-color', '#eeeeee');
        filterSegment($(this).closest("tr"));
    });
});

function filterSegment(row) {
    var codDas = $("td", row).eq(0).text();
    $("#segment tr").each(function () {
        var codeDasInSegment,
        codeDasInSegment = $(this).find("td").eq(0).text().trim();  
        if (codeDasInSegment!= null) {
            codeDasInSegment = codeDasInSegment.substring(0, 5);
            if (codeDasInSegment == codDas.trim()) {
                $(this).show();
            } else {
                $(this).hide();
            }
        }
    });
}

//la partie pour filtrer Sous Segment selon la ligne de Segment Choisie
$(function () {
    $("#segment td").click(function () {
        $("segment tr").css('background-color', "white");
        $(this).closest("tr").css('background-color', '#eeeeee');
        filterSousSegment($(this).closest("tr"));
    })
})

function filterSousSegment(row) {
    var codeSegment = $("td", row).eq(0).text();
    $("#subSegment tr").each(function () {
        var codeSegmentInSubSegment = $(this).find("td").eq(0).text().trim();
        if (codeSegmentInSubSegment != null) {
            codeSegmentInSubSegment = codeSegmentInSubSegment.substring(0, 7);
            if (codeSegmentInSubSegment == codeSegment.trim()) {
                $(this).show();
            }
            else {
                $(this).hide();
            }
        }
    });
}

$(function () {
    $("#subSegment td").click(function () {
        $("subSegment tr").css('background-color', "white");
        $(this).closest("tr").css('background-color', '#eeeeee');
    })
})

//search fonctionne
function filterAll() {
    filterTable($('#segment tr'));
    filterTable($('#das tr'));
    filterTable($('#subSegment tr'));
}

function filterTable(allTr) {
    var keyWord = $('#searchInput').val();
    allTr.each(function () {
        var designation = $(this).find("td").eq(3).text();
        if (designation && designation.length > 0 && keyWord && keyWord.length > 0) {
            keyWord = keyWord.toLowerCase();
            designation = designation.toLowerCase();
            if (designation.indexOf(keyWord) < 0) {
                $(this).hide();
            } else {
                $(this).show();
            }
        } else {
            $(this).show();
        }
    });
}

//La partie de pop-up
var dialog = $("#dialog-form").dialog({

    autoOpen: false,

    height: 400,

    width: 350,

    modal: true,

    buttons: {

        "Créer un nouveau DAS": addDas,

        Cancel: function () {

            dialog.dialog("close");

        }

    },

    close: function () {

        dialog.dialog("close");

    }

});

$("#btnAddDas").click(function () {

    dialog.dialog("open");

});

function addDas() {

    var codDasPopUp = document.getElementById("codDas").value;

    var codActiPopUp = document.getElementById("codActi").value;

    var libDasPopUp = document.getElementById("libDas").value;

    addRowToDas($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);
   
    $.ajax({
       
        url: "api/AddData",
       
        methode: "POST",
       
        body: {
       
            "codDas": codDasPopUp,
       
            "codActi": codActiPopUp,
       
            "libDas": libDasPopUp
       
        },
       
    }).done(function() { 
       
        addRowToTable($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);
   
    });     
       
    dialog.dialog("close");

}

function addRowToDas(tableBody, code, codeActivity, designation) {

    tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                + '<td>'

                                + '<span id="das_lblCodDAS_2" style="display:inline-block;width:100px;">' + code + '</span>'

                                + '</td>'

                                + '<td>'

                                + '<span id="das_lblCodActi_2" style="display:inline-block;width:100px;">' + codeActivity + '</span>'

                                + '</td>'

                                + '<td>'

                                + '<span id="das_lblLibDasFr_2" style="display:inline-block;width:180px;">' + designation + '</span>'

                                + '</td>'

                                + '</tr>');

}

//segment popUp
    
var dialogSegment = $("#dialog-form-segment").dialog({

    autoOpen: false,

    height: 400,

    width: 350,

    modal: true,

    buttons: {

        "Créer un nouveau Segment": addSegment,

        Cancel: function () {

            dialogSegment.dialog("close");

        }

    },

    close: function () {

        dialogSegment.dialog("close");

    }

});

 
function addSegment() {

    var codSegPopUp = document.getElementById("codSegment").value;

    //var codDasPopUp = document.getElementById("codActi").value;

    var libSegPopUp = document.getElementById("libSegment").value;

    addRowToTable($('#segment tbody'), codSegPopUp, libSegPopUp);

    /*
    
               $.ajax({
    
                   url: "api/AddData",
    
                   methode: "POST",
    
                   body: {
    
                       "codDas": codDasPopUp,
    
                       "codActi": codActiPopUp,
    
                       "libDas": libDasPopUp
    
                   },
    
    
    
                   }).done(function() { 
    
                       addRowToTable($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);
    
               });     
    
    */

    dialog.dialog("close");

}
function addRowToTable(tableBody, code, designation) {

    tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                + '<td>'

                                + '<span id="das_lblCodDAS_2" style="display:inline-block;width:100px;">' + code + '</span>'

                                + '</td>'

                                + '<td>'

                                + '<span id="das_lblLibDasFr_2" style="display:inline-block;width:180px;">' + designation + '</span>'

                                + '</td>'

                                + '</tr>');

}

$("#btnAddSeg").click(function () {

    dialogSegment.dialog("open");

});

 
//Sous Segment popUp

var dialogSubSegment = $("#dialog-form-subSegment").dialog({

    autoOpen: false,

    height: 400,

    width: 350,

    modal: true,

    buttons: {

        "Créer un nouveau SubSegment": addSubSegment,

        Cancel: function () {

            dialogSubSegment.dialog("close");

        }

    },

    close: function () {

        dialogSubSegment.dialog("close");

    }

});

$("#btnAddSouSeg").click(function () {

    dialogSubSegment.dialog("open");

});

function addSubSegment() {

    var codSubSegPopUp = document.getElementById("codSubSegment").value;

    //var codDasPopUp = document.getElementById("codActi").value;

    var libSubSegPopUp = document.getElementById("libSubSegment").value;

    addRowToTable($('#subSegment tbody'), codSubSegPopUp, libSubSegPopUp);

    /*
    
               $.ajax({
    
                   url: "api/AddData",
    
                   methode: "POST",
    
                   body: {
    
                       "codDas": codDasPopUp,
    
                       "codActi": codActiPopUp,
    
                       "libDas": libDasPopUp
    
                   },
    
    
    
                   }).done(function() { 
    
                       addRowToTable($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);
    
               });     
    
    */

    dialog.dialog("close");

}
