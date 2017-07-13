$(document).on("click", ".descriptionMedia", function () {
    $("#mediaDescriptionIndex").val($(this).parent().index() - 1);
    $("#mediaDescription").val($(this).parent().attr("data-description"));
    $("#mediaDescriptionModal").modal();
});
$("#okMediaDescriptionModal").on("click", function () {
    $("#postMedia blockquote:eq(" + $("#mediaDescriptionIndex").val() + ")").attr("data-description", $("#mediaDescription").val());
    $("#postMedia blockquote:eq(" + $("#mediaDescriptionIndex").val() + ") p").html($("#mediaDescription").val());
    $("#mediaDescriptionModal").modal('hide');
});

$(document).on("dblclick", ".mediaImage", function () {
    var src = $(this).find("img").attr("src");
    addMedia(src, "image");
    $("#mediaModal").modal("hide");
});
$("#okVideoModal").on("click", function () {
    addMedia(videoEmbed.convertMedia($("#postVideoUrl").val()), "video");
    $("#postVideoUrl").val('');
    $("#videoModal").modal("hide");
});
function addMedia(src, type) {
    $("#postMedia").append('<blockquote data-type="' + type + '" data-value="' + src + '">' + src
        +'<i style="color:red;cursor:pointer" class="removeMedia pull-right fa fa-remove"></i>'
        +'<i style="cursor:pointer" class="descriptionMedia pull-right fa fa-comment-o"></i><p></p></blockquote>');
}
$(document).on("click", ".removeMedia", function () {
    $(this).parent().remove();
});
$(document).on("click", "#addMediaBtn", function () {
    var formData = new FormData($("#addMediaModal form")[0]);
    if ($("#addMediaModal input[name='media']").val() == '') {
        alert("Please select a valid file.");
        return;
    }
    $.ajax({
        url: "/Admin/AddMedia",
        type: 'POST',
        data: formData,
        contentType: false,
        processData: false,
        success: function (name) {
            var template = $(".mediaImage").parent().parent().first().clone();
            template.find("img").attr("src", "/Content/Media/" + name);
            template.find(".tools a").first().attr("href", "javascript:copyToClipboard('/Content/Media/" + name + "')");
            template.find(".tools a").last().attr("data-nm", name);
            template.find(".caption p").text(name);
            $(".mediaImage").parent().parent().first().before(template);
            $("#addMediaModal").modal("hide");
        }
    });
});
$(document).on("change", "#addMediaModal input[name='media']", function (e) {
    var count = 1;
    var files = e.currentTarget.files; // puts all files into an array
    var approvedHTML = "";
    // call them as such; files[0].size will get you the file size of the 0th file

    var filesize = ((files[0].size / 1024)).toFixed(4); // KB

    if (files[0].name != "item" && typeof files[0].name != "undefined" && filesize <= 300) {

    } else {
        alert("Maximum File Size: 300KB");
        $(this).val('');
    }
});
function copyToClipboard(data) {
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val(data).select();
    document.execCommand("copy");
    console.log(data);
    $temp.remove();
}
$("#removeMediaModal").on("show.bs.modal", function (e) {
    $(this).find("img").attr("src", "/Content/Media/" + $(e.relatedTarget).attr("data-nm"));
    $(this).find("input").val($(e.relatedTarget).attr("data-nm"));
    $(e.relatedTarget).parent().parent().parent().attr("data-active", 1);
});
$("#removeMediaModal").on("hide.bs.modal", function (e) {
    $(".mediaImage").attr("data-active", 0);
});
$(document).on("click", "#removeMediaBtn", function () {
    var data = $(this).parent().parent().serialize();
    $.post("/Admin/RemoveMedia", data, function () {
        $("[data-active=1]").parent().parent().remove();
        $("#removeMediaModal").modal("hide");
    });
});
        
$(document).ready(function () {
    $('#tags_1').tagsInput({
        width: 'auto'
    });
});
tinymce.init({
    selector: '#postBody,#postBodyPartTwo',
    theme: 'modern',
    plugins: [
       'advlist autolink lists link image charmap print preview hr anchor pagebreak',
       'searchreplace wordcount visualblocks visualchars code fullscreen',
       'insertdatetime media nonbreaking save table contextmenu directionality',
       'template paste textcolor colorpicker textpattern imagetools'
    ],
    toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
    toolbar2: 'print preview media | forecolor backcolor',
    image_advtab: true,
    templates: [
      { title: 'Test template 1', content: 'Test 1' },
      { title: 'Test template 2', content: 'Test 2' }
    ],
    content_css: [
      '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
      '//www.tinymce.com/css/codepen.min.css'
    ]
});

$('#locationModal').on("shown.bs.modal", function () {
    $('#locationDiv').locationpicker('autosize');
});
$('#locationModal #selectLocationBtn').on("click", function () {
    $("#lat").text($('#locationDiv').locationpicker("location").latitude);
    $("#long").text($('#locationDiv').locationpicker("location").longitude);
    currentLocation.Latitude = $('#locationDiv').locationpicker("location").latitude;
    currentLocation.Longitude = $('#locationDiv').locationpicker("location").longitude;
    currentLocation.HasLocation = true;
    $('#locationModal').modal("hide");
});
$("#clearLocationBtn").on("click", function () {
    $("#lat").text("Not Selected");
    $("#long").text("Not Selected");
    currentLocation.Latitude = 0;
    currentLocation.Longitude = 0;
    currentLocation.HasLocation = false;
});
function isBlank(str) {
    return (!str || /^\s*$/.test(str));
}
function hideLoading() {
    $("#loadingDiv").hide();
}
function showLoading() {
    $("#loadingDiv").show();
}