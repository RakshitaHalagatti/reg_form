$(document).ready(function() {

  // CREATE
  $("#registrationForm").on('submit', function(e) {
    e.preventDefault();

    // --- Validation before sending data ---
    let name = $("#full_name").val().trim();
    let phone = $("#phone").val().trim();

    // Name validation (only alphabets and spaces)
    if (!/^[A-Za-z\s]+$/.test(name)) {
      alert("Name should contain only alphabets.");
      return false;
    }

    // Phone validation (only digits, min 10, max 15)
    if (!/^[0-9]{10,15}$/.test(phone)) {
      alert("Phone number should contain only digits (10–15 digits).");
      return false;
    }

    // Proceed with AJAX if validation passes
    $.ajax({
      url: "insert.php",
      type: "POST",
      data: new FormData(this),
      contentType: false,
      processData: false,
      success: function(response) {
        $("#response").html(response);
        $("#registrationForm")[0].reset();
      }
    });
  });

  // READ
  $("#viewData").click(function() {
    $.get("fetch.php", function(data) {
      $("#records").html(data);
    });
  });

  // DELETE
  $(document).on("click", ".delete", function() {
    let id = $(this).data("id");
    $.post("delete.php", { id: id }, function(response) {
      alert(response);
      $("#viewData").click();
    });
  });

  // -------- EDIT FUNCTIONALITY --------

  // Open modal and fill data
  $(document).on("click", ".edit", function() {
    $("#editModal").show();
    $("#edit_id").val($(this).data("id"));
    $("#edit_name").val($(this).data("name"));
    $("#edit_email").val($(this).data("email"));
    $("#edit_phone").val($(this).data("phone"));
    $("#edit_gender").val($(this).data("gender"));
    $("#edit_color").val($(this).data("color"));
  });

  // Close modal
  $(".close").click(function() {
    $("#editModal").hide();
  });

  // Update record (with validation)
  $("#editForm").on("submit", function(e) {
    e.preventDefault();

    let edit_name = $("#edit_name").val().trim();
    let edit_phone = $("#edit_phone").val().trim();

    // Validate edit form fields
    if (!/^[A-Za-z\s]+$/.test(edit_name)) {
      alert("Name should contain only alphabets.");
      return false;
    }

    if (!/^[0-9]{10,15}$/.test(edit_phone)) {
      alert("Phone number should contain only digits (10–15 digits).");
      return false;
    }

    $.ajax({
      url: "update.php",
      type: "POST",
      data: $(this).serialize(),
      success: function(response) {
        alert(response);
        $("#editModal").hide();
        $("#viewData").click();
      }
    });
  });

});
