
$("#admAddAdminBtn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admAddAdmin",

        async: true,
        data: $("#admAddAdminForm").serialize()
    };



    $.ajax(ajaxConfigure)
            .done(function (response) {
                if (response.toString() == "success") {
                    swal("Success!", "New Admin added!", "success");


                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });


});
$("#admUpdateAdminBtn").click(function () {
    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admUpdateAdmin",
        async: true,
        data: $("#admUpdateAdminForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {
                if (response.toString() == "success") {
                    swal("Success!", "Admin successfully Updated!", "success");
                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });
});
$("#admDeleteBtn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admDeleteAdmin",
        async: true,
        data: $("#admDeleteAdminForm").serialize()
    };


    $.ajax(ajaxConfigure)
            .done(function (response) {



                if (response.toString() == "success") {
                    swal("Success!", "Admin successfully Deleted!", "success");


                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });


});


$("#admAddStuBtn").click(function () {
    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admAddStudent",
        async: true,
        data: $("#admAddStudentForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {
                if (response.toString() == "success") {
                    swal("Success!", "Student successfully Added!", "success");
                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            })
            .fail(console.log("failed"));
});




$("#admDelStuBtn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admDeleteStudent",
        async: true,
        data: $("#admDelStuForm").serialize()
    };


    $.ajax(ajaxConfigure)
            .done(function (response) {



                if (response.toString() == "success") {
                    swal("Success!", "Student successfully Deleted!", "success");


                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });


});


$("#admAddTuiBtn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admAddTutor",
        async: true,
        data: $("#admAddTutorForm").serialize()
    };


    $.ajax(ajaxConfigure)
            .done(function (response) {



                if (response.toString() == "success") {
                    swal("Success!", "Tutor successfully Added!", "success");


                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });


});


$("#admDelTuiBtn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admDeleteTutor",
        async: true,
        data: $("#admDelTuiForm").serialize()
    };


    $.ajax(ajaxConfigure)
            .done(function (response) {



                if (response.toString() == "success") {
                    swal("Success!", "Tutor successfully Deleted!", "success");


                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });


});



$("#admDelStfBtn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admDeleteStaff",
        async: true,
        data: $("#admDelStfForm").serialize()
    };


    $.ajax(ajaxConfigure)
            .done(function (response) {

                if (response.toString() == "success") {
                    swal("Success!", "Staff Member successfully Added!", "success");
                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });
});

$("#admAddStfBtn").click(function () {
    console.log("click");
    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admAddStaff",
        async: true,
        data: $("#admAddStfForm").serialize()
    };

    $.ajax(ajaxConfigure)
            .done(function (response) {
                console.log("ok");
                console.log(response);
            })
            .fail(function (response) {
                console.log("fail");
                console.log(response);
            })
            .always(function (response) {
                console.log("always");
            })
});