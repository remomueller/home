$(document)
  .on('blur', '[data-object~="save-item-cell"]', ->
    # console.log "#{$(this).data('item')} #{$(this).attr('name')} #{$(this).val()}"

    $.post(
      "#{root_url}items/#{$(this).data('item')}/update_cell",
      "_method=patch&item[#{$(this).attr('name')}]=#{$(this).val()}", null, "script"
    )
  )
