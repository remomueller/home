@resetSavedCells = ->
  $(".item-cell-saved").removeClass("item-cell-saved");

@markCellSaved = (cell) ->
  resetSavedCells()
  $(cell).removeClass("item-cell-failed");
  $(cell).addClass("item-cell-saved");

@markCellFailed = (cell) ->
  resetSavedCells()
  $(cell).addClass("item-cell-failed");

$(document)
  .on('blur', '[data-object~="save-item-cell"]', ->
    $this = $(this)
    $.post(
      "#{root_url}items/#{$(this).data('item')}/update_cell",
      "_method=patch&item[#{$(this).attr('name')}]=#{$(this).val()}", null, "script"
    ).done(->
      markCellSaved($this)
    ).fail(->
      markCellFailed($this)
    )
  )
