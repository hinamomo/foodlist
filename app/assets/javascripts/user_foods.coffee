# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'change', '#user_food_large_id', ->
  $.ajax(
    type: 'GET'
    url: '/user_foods/middle_item_select'
    data: {
      large_id: $(this).val()
    }
  ).done (data) ->
    $('#f_middle_id').html(data)
    
$(document).on 'change', '#f_middle_id', ->
  $.ajax(
    type: 'GET'
    url: '/user_foods/small_item_select'
    data: {
      middle_id: $(this).val()
    }
  ).done (data) ->
    $('#f_small_id').html(data)