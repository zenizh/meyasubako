class Meyasubako
  constructor: ->
    @setToggleEvent()
    @setSubmitEvent()

  setToggleEvent: ->
    $('.meyasubako__heading').on 'click', ->
      Meyasubako.toggle()

  setSubmitEvent: ->
    $('.meyasubako__submit').on 'click', ->
      return false unless $('.meyasubako__content').val()

      $('.meyasubako__content').attr('disabled', 'disabled')
      $('.meyasubako__submit').attr('disabled', 'disabled')

      $('.meyasubako__message__container').fadeIn()

      interval = setInterval ->
          $('.meyasubako__message--sending').fadeOut 500, ->
            $(this).fadeIn 500
        , 1000

      $.ajax
        type: 'post'
        url: '/meyasubako'
        data:
          authenticity_token: $('#authenticity_token').val()
          content:            $('.meyasubako__content').val()

        success: ->
          $('.meyasubako__message--sending').stop()
          clearInterval(interval)

          $('.meyasubako__message--sending').hide()
          $('.meyasubako__message--success').fadeIn()

  @toggle: ->
    container = $('.meyasubako__container')

    if container.is(':visible') then container.hide() else container.show()

window.Meyasubako = Meyasubako
