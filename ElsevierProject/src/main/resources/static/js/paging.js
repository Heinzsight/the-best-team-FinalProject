$(document).ready(function() {
    $("#nextBtn").click(function(){
    });
});
$("#inlineRadio1").click(function() {
    $("#required_later").prop("required", false);
    $("#required_later").prop("disabled", true);
});
$("#inlineRadio2").click(function() {
    $("#required_later").prop("required", true);
    $("#required_later").prop("disabled", false);
    $("#required_later").focus();
});