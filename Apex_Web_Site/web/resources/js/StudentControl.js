$("#stuEditStuBtn").click(function () {
    var ajaxConfigure = {
        type: "POST",
        url: "../student/stuEditProfile",
        async: true,
        data: $("#stuEditStudentForm").serialize()
    };
    $.ajax(ajaxConfigure)
            .done(function (response) {
                if (response.toString() == "success") {
                    swal("Success!", "Student successfully Updated!", "success");
                }
                if (response.toString() == "error") {
                    swal("error!", "Something Went Wrong!", "error");
                }
            });
});

$("#stuSearchAttendence").click(function () {
    $.ajax({
        type: 'POST',
        url: '../student/stuViewAttendence',
        data: $("#stuViewAtdForm").serialize(),
        success: function (response) {
            $("#profileTable").hide();
            var objArr = JSON.parse(response);
            var count = objArr.length;
            swal("Completed!", "We have found " + count + " records!", "success");
            if (count != 0) {
                $("#profileTable").show();
            }
            $("#atdTableBody").empty();
            var tableContent;
            for (var i = 0; i < objArr.length; i++) {
                var obj = objArr[i];
                tableContent += '<tr class="table-success">' +
                        '<td>' + obj.date + '</td>' +
                        '<td>' + obj.status + '</td>' +
                        '</tr>';
            }
            $("#atdTableBody").append(tableContent);
        }

    });
});

$("#searchBtn-payHistory").click(function () {
    $.ajax({
        type: 'POST',
        url: '../student/stuViewPayments',
        data: $("#stuViewPayForm").serialize(),
        success: function (response) {
            $("#profileTable").hide();
            var objArr = JSON.parse(response);
            var count = objArr.length;
            swal("Completed!", "We have found " + count + " records!", "success");
            if (count != 0) {
                $("#profileTable").show();
            }
            $("#payDetailsBody").empty();
            var tableContent;
            for (var i = 0; i < objArr.length; i++) {
                var obj = objArr[i];
                tableContent += '<tr class="table-success">' +
                        '<td>' + obj.date + '</td>' +
                        '<td>' + obj.amount + '</td>' +
                        '<td>' + obj.method + '</td>' +
                        '<td>' + obj.status + '</td>' +
                        '</tr>';
            }
            $("#payDetailsBody").append(tableContent);
        }
    });
});

$("#searchBtn-viewResuls").click(function () {
    $.ajax({
        type: 'POST',
        url: '../student/stuViewExamResults',
        data: $("#stuViewResultForm").serialize(),
        success: function (response) {
            console.log("ok");
            $("#profileTable").hide();
            var objArr = JSON.parse(response);
            var count = objArr.length;
            swal("Completed!", "We have found " + count + " records!", "success");
            if (count != 0) {
                $("#profileTable").show();
            }
            $("#examTableBody").empty();
            var tableContent;
            for (var i = 0; i < objArr.length; i++) {
                var obj = objArr[i];
                tableContent += '<tr class="table-success">' +
                        '<td>' + obj.date + '</td>' +
                        '<td>' + obj.term + '</td>' +
                        '<td>' + obj.result + '</td>' +
                        '<td>' + obj.progress + '</td>' +
                        '<td>' + obj.remarks + '</td>' +
                        '</tr>';
            }
            $("#examTableBody").append(tableContent);
        }
    });
});

$("#searchBtn-tuitor").click(function () {
    $.ajax({
        type: 'POST',
        url: '../student/stuFindTutor',
        data: $("#stuSearchTuiForm").serialize(),
        success: function (response) {
            console.log("ok");
            $("#tutorSugguest").hide();
            $("#tutorLoaded").empty();
            if (response.length == 0) {
                swal("Sorry!", "We dont have any Tutors for this selection", "error");
                return;
            } else {
                var objJs = JSON.parse(response);
                swal("Thank you!", "We have found a best Tutor for you!", "success");
            }
            console.log(objJs);
            var graduation = objJs.graduation;
            if (graduation == 'none') {
                graduation = 'An experienced school teacher';
            }
            var divContent = '<div class="col-md-3"></div>' +
                    '<div class="col-md-6" style="min-height: 640px;"' +
                    '<div class="card mb-3"  style=" border: 2px solid;">' +
                    '<h3 class="card-header">' + objJs.firstName + ' ' + objJs.lastName + '</h3>' +
                    '<div class="card-body">' +
                    '<h5 class="card-title">Contact on &nbsp;: &nbsp;(+94)' + objJs.mobileNumber + ' | ' + objJs.email + '</h5>' +
                    '<h6 class="card-subtitle text-muted">' + graduation + '</h6>' +
                    '</div>' +
                    '<img style="height: 450px; width: 100%; display: block;" src="../resources/img/aselaSir.jpg"alt="Card image">' +
                    '<div class="card-body">' +
                    '<p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<div class="col-md-3"></div>';
            $("#tutorLoaded").append(divContent);
        }
    });
});



$("#search-btnClass").click(function () {
    $.ajax({
        type: 'POST',
        url: '../student/stuFindClass',
        data: $("#stuSearchClassForm").serialize(),
        success: function (response) {
            console.log("ok");
            $("#classSuguest").hide();
            $("#classLoaded").empty();
            if (response.length == 0) {
                swal("Sorry!", "We dont have any Classes for this selection", "error");
                return;
            } else {
                var objJs = JSON.parse(response);
                swal("Thank you!", "We have found a best Class for you!", "success");
            }
            console.log(objJs);
            var divContent = '<div class="col-md-3"></div>' +
                    '<div class="col-md-6" style="min-height: 640px;"' +
                    '<div class="card mb-3"  style=" border: 2px solid;">' +
                    '<h3 class="card-header">' + objJs.day + ' | ' + objJs.time + '</h3>' +
                    '<div class="card-body">' +
                    '<h5 class="card-title">Hall number:&nbsp;' + objJs.hallNo + '</h5>' +
                    '</div>' +
                    '<img style="height: 450px; width: 100%; display: block;" src="../resources/img/aselaSir.jpg"alt="Card image">' +
                    '<div class="card-body">' +
                    '<p class="card-text">Please consider that the time duration can be vary due to un avoidable matters</p>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<div class="col-md-3"></div>';
            $("#classLoaded").append(divContent);
        }
    });
});


//$("#updateBtnPic").click(function () {
//
//    console.log("ök");
//
//
//
//    $.ajax({
//        headers: {
//            'Accept': 'application/json',
//            'Content-Type': 'application/json'
//        },
//        type: 'POST',
//        enctype: 'multipart/form-data',
//        url: '../student/stuEditPic',
//        processData: false,
//        
//        cache: false,
//        timeout: 600000,
//        data: $("#profilePicUpload").serialize(),
//        success: function (response) {
//            console.log(response);
//            var obj = JSON.parse(response);
//            var picAddress = obj.picture;
//            var contentImg = '<img src="' + picAddress + '" class="img-fluid" width="300" height="300" id="stuPic">';
//            $("#stuPic").empty();
//            $("#stuPic").append();
//
//        }
//    });
//
//
//});