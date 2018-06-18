$("#stfEditStaffBtn").click(function () {
    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfEditStaff",
        async: true,
        data: $("#stfEditStaffForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {
                if (response.toString() == "success") {
                    swal("Success!", "Staff member successfully Updated!", "success");
                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });
});

$("#searchBtn-payHistory").click(function () {
    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfViewSalary",
        async: true,
        data: $("#stfViewSalaryForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {
                $("#profileTable").hide();
                var objArr = JSON.parse(response);

                var count = objArr.length;
                swal("Completed!", "We have found " + count + " records!", "success");
                if (count != 0) {
                    $("#profileTable").show();
                }
                $("#salaryDetailsBody").empty();
                var tableContent;
                for (var i = 0; i < objArr.length; i++) {
                    var obj = objArr[i];
                    tableContent += '<tr class="table-success">' +
                            '<td>' + obj.date + '</td>' +
                            '<td>' + obj.receiverType + '</td>' +
                            '<td>' + obj.amount + '</td>' +
                            '<td>' + obj.status + '</td>' +
                            '</tr>';
                }
                $("#salaryDetailsBody").append(tableContent);
            });
});


$("#stfEnterExamBtn").click(function () {
    console.log("outter");
    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfCollectExamResults",
        async: true,
        data: $("#stfSubmitExamResultsForm").serialize()
    };
    $("#examDetailFetchIndicator").empty();
    $.ajax(ajaxConfigure)
            .done(function (response) {
                console.log("inside");
                console.log(response);

                if (response.toString() == "success") {
                    $("#examDetailFetchIndicator").append("Successfully collected !");
                } else {
                    swal("Warning!", "Something went wrong", "error");
                }





            });

});

$("#stfEnterSalaryBtn").click(function () {
    console.log("outter");
    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfEnterSalaryDetails",
        async: true,
        data: $("#stfSubmitSalaryDetailsForm").serialize()
    };
    $("#examDetailFetchIndicator").empty();
    $.ajax(ajaxConfigure)
            .done(function (response) {
                console.log("inside");
                console.log(response);


                if (response.toString() == "success") {
                    $("#examDetailFetchIndicator").append("Successfully collected !");
                } else {
                    swal("Warning!", "Something went wrong", "error");
                }

            });

});


$("#stuIdInput").keyup(function () {
    console.log("outter");
    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfCollectStuAttendenceGetStuDetails",
        async: true,
        data: $("#stfSubmitAttendenceDetailsForm").serialize()
    };
    
    $("#stuDetailsDiv").empty();
    $.ajax(ajaxConfigure)
            .done(function (response) {
                var obj = JSON.parse(response);
                console.log(obj);
                
               
                var divContent = '<div class="col-md-5">' +
                        '<img id="atd-collection-stu-pic" src="'+obj.picture+'" width="300" height="300" style="border:1px solid;">' +
                        '</div>' +
                        '<div class="col-md-1"></div>' +
                        '<div class="col-md-6">' +
                        '<table class="table table-hover" id="profileTable">' +
                        '<tbody>' +
                        '<tr class="table-success">' +
                        '<th scope="row">Student Id</th>' +
                        '<td>'+obj.stuRegNumber+'</td>' +
                        '</tr>' +
                        '<tr class="table-light">' +
                        '<th scope="row">Student Name</th>' +
                        '<td>'+obj.firstName+'&nbsp;'+obj.lastName+'</td>' +
                        '</tr>' +
                        '<tr class="table-success">' +
                        '<th scope="row">Mobile Number</th>' +
                        '<td>'+obj.mobileNumber+'</td> ' +
                        '</tr>' +
                        '</tbody>' +
                        '</table>' +
                        '</div>' +
                        '</div>' ;
                       
                        $("#stuDetailsDiv").append(divContent);
                       
                
                

            });

});


$("#stfCollectAtd").click(function () {
    console.log("outter");
    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfCollectStuAttendence",
        async: true,
        data: $("#stfSubmitAttendenceDetailsForm").serialize()
    };
    $("#examDetailFetchIndicator").empty();
    $.ajax(ajaxConfigure)
            .done(function (response) {
                console.log("inside");
                console.log(response);


                if (response.toString() == "success") {
                    $("#examDetailFetchIndicator").append("Successfully collected !");
                } else {
                    swal("Warning!", "Something went wrong", "error");
                }

            });

});

$("#stfCollectFees").click(function () {
    console.log("outter");
    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfCollectStuFees",
        async: true,
        data: $("#stfSubmitAttendenceDetailsForm").serialize()
    };
   
    $.ajax(ajaxConfigure)
            .done(function (response) {
                
                console.log(response);


                if (response.toString() == "success") {
                    swal("Done!", "Successfully Fees Collected!", "success");
                } else {
                    swal("Warning!", "Something went wrong", "error");
                }

            });

});
