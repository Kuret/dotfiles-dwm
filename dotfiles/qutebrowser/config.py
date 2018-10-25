c.window.title_format = "{perc}{title}{title_sep}{host}{title_sep}qutebrowser"
c.auto_save.session = True
c.scrolling.smooth = True

c.tabs.position = "left"
c.tabs.background = True
c.tabs.width = "10%"
c.tabs.favicons.scale = 1.5
c.tabs.padding = {
  "top": 5,
  "bottom": 5,
  "left": 5,
  "right": 5
}

config.bind("<Ctrl-Shift-j>", "scroll-page 0 0.5")
config.bind("<Ctrl-Shift-k>", "scroll-page 0 -0.5")

config.bind(";v", "hint links spawn mpv --ontop --no-border --screen=0 --geometry=25%-10-20 --keep-open {hint-url}")

config.bind("<Ctrl-d>", "config-cycle content.user_stylesheets darculized-all-sites.css ''")
config.bind("<Alt-t>", "config-cycle tabs.position left top")

c.aliases = {
  "w": "session-save",
  "wq": "quit --save",
  "x": "quit --save",
  "yt": "open -t https://youtube.com/feed/subscriptions"
}

c.url.searchengines = {
  "DEFAULT": "https://duckduckgo.com/?q={}",
  "g": "https://www.google.com/search?hl=en&q={}",
  "wa": "https://wiki.archlinux.org/?search={}",
  "wp": "https://en.wikipedia.org/wiki/{}",
  "wpn": "https://nl.wikipedia.org/wiki/{}"
}

#c.content.user_stylesheets = []
