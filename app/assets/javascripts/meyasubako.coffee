class Meyasubako
  constructor: ->
    @setToggleEvent()
    @setSubmitEvent()

  setToggleEvent: ->
    $('.meyasubako__heading').on 'click', ->
      container = $('.meyasubako__container')

      # Switch form visibility
      if container.is(':visible') then container.hide() else container.show()

  setSubmitEvent: ->
    $('.meyasubako__submit').on 'click', ->
      # Return if textarea is empty
      return false unless $('.meyasubako__content').val()

      # Disable form
      $('.meyasubako__content').attr('disabled', 'disabled')
      $('.meyasubako__submit').attr('disabled', 'disabled')

      # Show sending message
      $('.meyasubako__message__container').fadeIn()

      # Blink message
      interval =
        setInterval ->
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
          # Clear animation
          $('.meyasubako__message--sending').stop()

          # Stop blinking
          clearInterval(interval)

          # Show success message
          $('.meyasubako__message--sending').hide()
          $('.meyasubako__message--success').fadeIn()

window.Meyasubako = Meyasubako
