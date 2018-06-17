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

