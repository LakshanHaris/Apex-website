$("#admAddAdminBtn").click(function () {

    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admAddAdmin",

        async: true,
        data: $("#admAddAdminForm").serialize()
    };

    console.log("inside");


    $.ajax(ajaxConfigure)
            .done(function (response) {
                console.log(response);
                if (response != 0) {
                    swal("New Admin added!", "Admin registration number :" + response + "", "success");


                } else {
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


$("#admAddParentBtn").click(function () {
    console.log("inside");
    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admAddParentStuRegister",
        async: true,
        data: $("#admAddParentForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {

                console.log("okkk");

                if (response != null) {
                    swal("Student Added!", "Student registration number : " + response + "!", "success");
                } else {
                    swal("Error!", "Something Went Wrong!", "error");
                }
            })
            .fail(console.log("failed"));
});


$("#admEditParentBtn").click(function () {
    console.log("inside");
    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admEditStudentParent",
        async: true,
        data: $("#admEditParentForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {

                console.log("okkk");

                if (response.toString() == "success") {
                    swal("Success!", "Parent successfully updated!", "success");


                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            })
            .fail(console.log("failed"));
});


$("#admAddStuBtn").click(function () {
    console.log("inside");
    var ajaxConfigure = {
        type: "POST",
        url: "../admin/admAddParentStuRegisterExists",
        async: true,
        data: $("#admAddStudentForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {

                console.log(response);

                if (response != null) {
                    swal("Student Added!", "Student registration number : " + response + "!", "success");
                } else {
                    swal("Error!", "Something Went Wrong!", "error");
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



                if (0 != response) {
                    swal("Tutor successfully Added!", "Registration number : " + response + " ", "success");


                } else {
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
                if (0 != response) {
                    swal("Staff Member successfully Added!", "Staff registration number : " + response + " ", "success");
                } else {
                    swal("error!", "Something Went Wrong!", "error");
                }

            })

});




