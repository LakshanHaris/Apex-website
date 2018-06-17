$("#tuiEditTutorBtn").click(function () {
    var ajaxConfigure = {
        type: "POST",
        url: "../tutor/tuiEditProfile",
        async: true,
        data: $("#tuiEditTutorForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {
                if (response.toString() == "success") {
                    swal("Success!", "Tutor successfully Updated!", "success");
                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });
});

$("#searchBtn-payHistory").click(function () {
    $.ajax({
        type: 'POST',
        url: '../tutor/tuiViewSalary',
        data: $("#tuiViewSalaryForm").serialize(),
        success: function (response) {
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
        }
    });
});