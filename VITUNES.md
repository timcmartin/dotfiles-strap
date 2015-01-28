# General commands

    ,i invoke or dismiss ViTunes
    ,I invoke ViTunes and go full screen with it
    ,? show help and commands
    ,I is useful if you want to launch immediately into ViTunes after starting Vim.

# Navigation

    ,s search iTunes library by search query
    ,p select playlist
    ,a select artist
    ,g select genre
    ,A select album
    ENTER start playing a track under cursor

Playlist, artist, genre, and album navigation (but not search) use make use of Vim autocompletion. Start typing the first few letters of what you want. For example, if you want to jump to all artists that start with the letter 'P', type 'P' and you'll see the drop-down items update. This autocompletion is case-sensitive.

    CTRL-p and CTRL-n let you navigate the drop-down matches. Press ENTER to select one.

# More advanced autocompletion tips:

    CTRL-e closes the match list and lets you continue typing
    CTRL-u: when the match list is active, cycles forward through the match list and what you've typed so far; when the match list is inactive, erases what you've typed.
    both TAB and CTRL-x CTRL-u reactivates autocompletion if it's gone away
    CTRL-y selects the highlighted match without triggering ENTER
    To exit the autocompletion or search query mode, press ENTER when the query line is blank, or try ESC then q.

# Volume Control

    + louder
    - softer
    = louder

# Playhead

    SPACEBAR play/pause
    > next track in ViTunesBuffer
    < previous track in ViTunesBuffer
    >> next track in iTunes current playlist
    << previous track in iTunes current playlist
    . show current track and playlist, if any

One thing to note: if you start playing a track that you've gotten to by going through the playlist dropdown, iTunes will play in continuous mode, where the next track in the playlist will automatically start playing after the current one ends.

But if you start playing a track you found some other way (e.g. via search query), iTunes will stop playing after that track ends.

If you want to use ViTunes to find and queue a bunch of tracks and have them play in automatic succession, use the next feature...

# Copying and deleting tracks

    ,c copy track(s) to a playlist
    BACKSPACE deletes track(s) from the playlist

To copy tracks, put the cursor on a track or select a range of tracks, and then hit ,c to select a playlist to copy them to. The tracks will be added to the end of the playlist.

If this target playlist is already playing, you can keep queuing tracks to it and let the mix play out automatically.

To delete tracks from a playlist, put the cursor on a track or select a range of tracks, and then hit BACKSPACE (the Apple delete key) to remove them from the playlist that you are looking at.

# Managing playlists

    ,P goes to the current playlist, if there is one
    :NewPlaylist [new playlist name] creates a new playlist

# Tips

If you want to see your entire library in a Vim buffer, load the Library playlist. It may take a few seconds to load your entire iTunes library. But once it's loaded you'll be able to page through it at blazing speed and play any tracks you want. The list will be sorted by artist.

- See more at: [http://danielchoi.com/software/vitunes.html#sthash.mCW5LByP.dpuf](http://danielchoi.com/software/vitunes.html#sthash.mCW5LByP.dpuf)
