$( document ).ready(function() {
    $(".event-volunteer").change(function() {
      var self = this;
      var userId = self.selectedOptions[0].value;
      var eventVolunteerSlotId = self.id;
      var url = "/event_volunteers";
      console.log(userId);
      console.log(eventVolunteerSlotId);
      $.ajax({
        method: "POST",
        url: url,
        data: { event_volunteer: {user_id: userId, event_volunteer_slot_id: eventVolunteerSlotId} },
        dataType: "JSON"
      }).done(function(data) {
        console.log(data.status);
    });
  });
});
