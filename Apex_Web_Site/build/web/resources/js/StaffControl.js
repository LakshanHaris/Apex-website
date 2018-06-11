$("#stu-fees-submit-btn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../staff/stfEnterSalaryDetails",
        async: true,
        data: $("#stfEnterSalaryForm").serialize()
    };



    $.ajax(ajaxConfigure)
            .done(function (response) {
                if (response.toString() == "success") {
                    swal("Success!", "Salary record Added!", "success");


                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });


});

