$(document).on("click", ".submit_button", function(){
      var res = [];
      var arr = $("tbody").find(".approval_checkbox");
      // console.log(arr);
      for(var i = 0; i < arr.length; i++)
      {
        var cid = $(arr[i]).siblings("#inno_id").html();
        var sel;
        // console.log($(arr[i]).children("input").is(":checked"));
        if($(arr[i]).children("input").is(":checked")) sel = 1;
        else sel = 0;
        res.push({'inno_id': cid, 'checked_in': sel});
      }
      console.log(res);
      $.ajax({
        type : "POST", 
        url : "../../apis/admin/participant/updateCheckInStatus.php",
        beforeSend: function(request){
          request.setRequestHeader('Authorization', 'Bearer ' + localStorage.admin_token);
        },
        data: {
            id_list: res
        },
        success: function(data)
        {
          console.log(data);
          alert((JSON.parse(data)).result);
          //location.reload();
        },
        error: function(data)
        {
          console.log(JSON.parse(data));
        }
      });
    });