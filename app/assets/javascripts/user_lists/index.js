$('.user_lists.index').ready(function(){
  console.log("current_user_page ready");

  var getMyLists = function () {
    $.ajax({
      url: '/api/user/lists',
      method: 'get',
      success: function (userlists) {
        $('#mylists-index').html('');

        userlists.forEach(function(userlist) {

          var restaurants = "";

          for(var i = 0; i < userlist.restaurants.length; i++) {
            var check = ''

            if (userlist.restaurant_checked[i][0] == true) {
              check = 'checked="checked"'
            } else {
              check = ''
            };

            restaurants += '<li>' + '<span data-list-id="' + userlist.id + '"><input type="checkbox" ' + check + ' id="' + userlist.title + userlist.restaurants[i] + i + '" data-id="' + userlist.restaurant_checked[i][1] +'"/><label for="' + userlist.title + userlist.restaurants[i] + i + '">' + userlist.restaurants[i] + '</label>' + '</span></li>';
          }

// *************************************************
  // json.title              userlist.title
  // json.restaurants        userlist.restaurants.select(:name).pluck(:name)
  // json.restaurant_checked userlist.restaurant_lists.select(:checked, :id).pluck(:checked, :id)
// *************************************************

          var html =
                    '<div class="col s4 bookmark-collapsible" data-list-id="' + userlist.id + '" ">' +
                      '<ul class="collapsible" data-collapsible="accordion">' +
                        '<li>' +
                          '<div class="collapsible-header green lighten-5">' +
                             '<span class="listTitle">' + userlist.title + '</span>' +
                          '</div>' +
                          '<div class="collapsible-body white">' +
                            '<form action="#">' +
                              '<div class="showrestaurants">' +
                                '<div id="userListRestaurantWrapper">' + '<ul class="restaurantlist">' + restaurants + '</ul>'  +
                                '</div>' +
                                '<div class="icons">' +
                                   '<i class="fa fa-pencil-square-o fa-2x editbutton" aria-hidden="true">' + '</i>' +
                                   '<i class="fa fa-times fa-2x deleteUserListButton" aria-hidden="true" data-list-id="' + userlist.id + '"></i>' +
                                '</div>' +
                              '</div>' +
                            '</form>' +
                          '</div>' +
                        '</li>' +
                      '</ul>' +
                    '</div>';
          $('#mylists-index').append(html);
        });

        $(".collapsible").collapsible({
          accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
        });

      }, error: function (resp) {
        console.log(resp);
      }
    });
  }


  var getMyBookmarks = function () {
    $.ajax({
      url: '/api/user/bookmarks',
      method: 'get',
      success: function (bookmarks) {
        $('#mybookmarks-index').html('');

        bookmarks.forEach(function(bookmark) {

          var restaurants = "";

          for(var i = 0; i < bookmark.restaurants.length; i++) {
            var check = ''

            if (bookmark.restaurant_checked[i][0] == true) {
              check = 'checked="checked"'
            } else {
              check = ''
            };

            restaurants += '<li>' + '<span data-list-id="' + bookmark.id + '"><input type="checkbox" ' + check + ' id="' + bookmark.title + bookmark.restaurants[i] + i + '" data-id="' + bookmark.restaurant_checked[i][1] +'"/><label for="' + bookmark.title + bookmark.restaurants[i] + i + '">' + bookmark.restaurants[i] + '</label>' + '</span></li>';
          }

// *************************************************
  // json.title                        bookmark.title
  // json.restaurants                  bookmark.restaurants.select(:name).pluck(:name)
  // json.restaurant_checked           list.restaurant_lists.select(:checked, :id).pluck(:checked, :id)
// *************************************************

          var html =
                    '<div class="col s6 bookmark-collapsible" data-list-id="' + bookmark.id + '" ">' +
                      '<ul class="collapsible" data-collapsible="accordion">' +
                        '<li>' +
                          '<div class="collapsible-header green lighten-5">' +
                             '<span class="listTitle">' + bookmark.title + '</span>' + ' ' + 'by' + ' ' + bookmark.user_name +
                          '</div>' +
                          '<div class="collapsible-body white">' +
                            '<form action="#">' +
                              '<div class="showrestaurants">' +
                                '<div class="restaurantWrapper">' + '<ul class="restaurantlist">' + restaurants + '</ul>'  +
                                '</div>' +
                                '<div class="icons">' +
                                  '<i class="fa fa-times fa-2x deleteBookmarkButton" data-favourite="no" data-list-id="' + bookmark.id + '" aria-hidden="true"></i>' +
                                '</div>' +
                              '</div>' +
                            '</form>' +
                          '</div>' +
                        '</li>' +
                      '</ul>' +
                    '</div>';
          $('#mybookmarks-index').append(html);
        });
        $(".collapsible").collapsible({
          accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
        });
      }, error: function (resp) {
        console.log(resp);
      }
    });
    checkboxEventListener();
  };

  var checkboxEventListener = function() {
    $('#lists-index').on('change', 'input:checkbox', (function(e){
      var restListId = e.currentTarget.dataset.id;
      var checked = e.currentTarget.checked;
      var params = {
        restaurant_list: {
          // id: restListId,
          checked: checked
        }
      }
      $.ajax({
        url: '/api/user/restaurant_list/' + restListId,
        method: 'put',
        data: params,
        success: function(){
          console.log('successfully updated restaurant!')
        },
        error: function(resp) {
          console.log(resp)
        }
      })
    }))
  };

// DELETE BOOKMARK

  var deleteBookmark = function (id) {
    $.ajax({
      url: '/api/user/bookmarks/' + id,
      method: 'delete',
      success: function () {
        console.log('Bookmark deleted on backend');
      }, error: function (resp) {
        console.log(resp);
      }
    });
  }

  var removeBookmarkDiv = function (id) {
    $("div[data-list-id=" + id + "]").remove();
  }

// DELETE BOOKMARK BUTTON FUNCTIONALITY
    var setDeleteBookmarkButton = function () {
    $('#mybookmarks-index').on('click', '.deleteBookmarkButton', function(e) {
      e.preventDefault();
      var ListId = e.currentTarget.dataset.listId;
      console.log('Bookmark Delete Button working');
      deleteBookmark(ListId);
      removeBookmarkDiv(ListId);
    });
  };


// DELETE USER LISTS

  var deleteUserList = function (id) {
    $.ajax({
      url: '/api/user/lists/' + id,
      method: 'delete',
      success: function () {
        console.log('User List bookmark deleted on backend');
      }, error: function (resp) {
        console.log(resp);
      }
    });
  }

  var removeUserListDiv = function (id) {
    $("div[data-list-id=" + id + "]").remove();
  }

// DELETE BOOKMARK BUTTON FUNCTIONALITY
    var setDeleteUserListButton = function () {
    $('#mylists-index').on('click', '.deleteUserListButton', function(e) {
      e.preventDefault();
      var ListId = e.currentTarget.dataset.listId;
      console.log('User List Delete Button working');
      deleteUserList(ListId);
      removeUserListDiv(ListId);
    });
  };

  var init = function () {
    getMyLists();
    getMyBookmarks();
    setDeleteBookmarkButton();
    setDeleteUserListButton();
  }

  init ();

});

