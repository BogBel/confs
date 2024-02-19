import catppuccin

config.load_autoconfig()
c.url.searchengines = {
    "DEFAULT": "https://google.com/search?q={}",
    # '!a':       'https://www.amazon.com/s?k={}',
    # '!d':       'https://duckduckgo.com/?ia=web&q={}',
    # '!dd':      'https://thefreedictionary.com/{}',
    # '!e':       'https://www.ebay.com/sch/i.html?_nkw={}',
    # '!fb':      'https://www.facebook.com/s.php?q={}',
    # '!gh':      'https://github.com/search?o=desc&q={}&s=stars',
    # '!gist':    'https://gist.github.com/search?q={}',
    # '!gi':      'https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1',
    # '!gn':      'https://news.google.com/search?q={}',
    # '!ig':      'https://www.instagram.com/explore/tags/{}',
    # '!m':       'https://www.google.com/maps/search/{}',
    # '!p':       'https://pry.sh/{}',
    # '!r':       'https://www.reddit.com/search?q={}',
    # '!sd':      'https://slickdeals.net/newsearch.php?q={}&searcharea=deals&searchin=first',
    # '!t':       'https://www.thesaurus.com/browse/{}',
    # '!tw':      'https://twitter.com/search?q={}',
    # '!w':       'https://en.wikipedia.org/wiki/{}',
    # '!yelp':    'https://www.yelp.com/search?find_desc={}',
    # '!yt':      'https://www.youtube.com/results?search_query={}'
}
config.bind(
    "<Escape>",
    "mode-leave ;; jseval -q document.activeElement.blur()",
    mode="insert",
)
# config.set("colors.webpage.darkmode.enabled", True)
# c.content.javascript.clipboard = "access"
# config.set("github.com content.javascript.clipboard", "access")
# config.set("linear.app content.javascript.clipboard", "access")
c.tabs.position = "left"
# config.source('catpuccin.py')
# config.source('onedark.py')
# config.source("themes/qute-city-lights/city-lights-theme.py")
catppuccin.setup(c, "mocha", True)

config.bind(" e", "config-cycle tabs.show always never")
# catppuccin.setup(c, 'macchiato', True)
config.bind("yf", "hint links yank")


config.unbind("ZZ", mode="normal")
config.unbind("ZQ", mode="normal")
# config.bind("Z", ":cmd-set-text -sr :tab-focus")
