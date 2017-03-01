$(document).ready -> 
    if !Modernizr.flexbox
        $('body').prepend(
          '<span class="box-info">Twoja przeglądarka nie posiada wsparcia dla <strong>flex</strong>, związku z tym strona nie będzie poprawnie wyświetlana! Proszę <a href="http://browsehappy.com/">zaktualizować swoją przeglądarkę</a> aby zwiększyć swoje wrażenia z przeglądania internetu. </span>'
        ) 
    if !Modernizr.mediaqueries
        $('body').prepend(
          '<span class="box-info">Twoja przeglądarka nie posiada wsparcia dla <strong>mediaqueries</strong>, związku z tym strona nie będzie poprawnie wyświetlana! Proszę <a href="http://browsehappy.com/">zaktualizować swoją przeglądarkę</a> aby zwiększyć swoje wrażenia z przeglądania internetu. </span>'
        )



class window.AudioPlayer
    audio = document.createElement('audio')
    audio.setAttribute('loop', '')

    constructor: (@container) ->
        @container.appendChild(audio)
    play: ->
        audio.play()
        this.isPlay = true
    stop: ->
        audio.pause()
        this.isPlay = false
    isPlay: false
    togglePlay: ->
        if this.isPlay
            this.stop()
        else
            this.play()
    isSetSource: ->
        audio.hasAttribute 'src'
    setSource: (url)->
        audio.setAttribute('src', url)
        audio.load()

$.initAudioPlayer = ->
    AudioPlayer.prototype.getNewAudioAndPlay = ->
        $.ajax(
            method: 'GET'
            url: 'audio/index.php?getRandomAudio'
            success: (data) =>
                this.setSource(data)
                this.play()
        )
    audioPlayer = new AudioPlayer(document.getElementById('audio-player'))

    audioPlay = $('#audio-play')
    audioPlay.on 'click', ->
        if !audioPlayer.isSetSource()
            audioPlayer.getNewAudioAndPlay()
            $(this).removeClass()
            $(this).addClass('fa fa-pause')
        else if audioPlayer.togglePlay()
            $(this).removeClass()
            $(this).addClass('fa fa-pause')
        else
            audioPlay.removeClass()
            audioPlay.addClass('fa fa-play')

    $('#audio-next').on 'click', ->
        audioPlayer.getNewAudioAndPlay()
        audioPlay.removeClass()
        audioPlay.addClass('fa fa-pause')
