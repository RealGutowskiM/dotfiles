# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# List of URLs of lists which contain hosts to block.  The file can be
# in one of the following formats:  - An `/etc/hosts`-like file - One
# host per line - A zip-file of any of the above, with either only one
# file, or a file   named `hosts` (with any extension).
# Type: List of Url
c.content.host_blocking.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.content.host_blocking.enabled = True

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

c.content.webgl = True

c.editor.command = ['nvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']

c.statusbar.hide = False
c.statusbar.padding = {'top': 1, 'bottom': 1, 'left': 0, 'right': 0}
c.statusbar.position = 'bottom'
c.statusbar.widgets = ['keypress', 'url', 'scroll', 'history', 'tabs', 'progress']

c.tabs.position = 'top'
c.tabs.padding = {'top': 1, 'bottom': 1, 'left': 5, 'right': 5}
c.tabs.select_on_remove = 'next'
c.tabs.title.format = '{index}: ({protocol}) {title}'
c.tabs.title.format_pinned = '{index}'

c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', 'aw': 'https://wiki.archlinux.org/index.php?title=Special%3ASearch&search={}', 'yt': 'https://www.youtube.com/results?search_query={}', 'g': 'https://google.com/search?hl=en&q={}'}
c.url.start_pages = 'https://start.duckduckgo.com'
c.url.yank_ignored_parameters = ['ref', 'utm_source', 'utm_medium', 'utm_campaign', 'utm_term', 'utm_content']

c.window.hide_decoration = False
c.window.title_format = '{perc}{title}{title_sep}qutebrowser'

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = ['white', 'white', 'white']

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#282A36'

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = 'white'

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = '#50FA7B'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = 'yellow'

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = '#555555'

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = '#0000aa'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = 'white'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = 'grey'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = 'white'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = 'grey'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = 'white'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#282A36'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = 'white'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = '#282A36'

# Background color for webpages if unset (or empty to use the theme's
# color).
# Type: QtColor
c.colors.webpage.bg = 'white'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = '"Meslo LG S", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '10pt monospace'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '10pt monospace'

# Font used for the hints.
# Type: Font
c.fonts.hints = 'bold 10pt monospace'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '12pt monospace'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '10pt monospace'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '10pt monospace'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '10pt monospace'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '12pt monospace'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '12pt monospace'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = '12pt monospace'

# Font family for standard fonts.
# Type: FontFamily
c.fonts.web.family.standard = None

# Bindings for normal mode
config.bind('m', 'hint links spawn mpv --loop {hint-url}')
config.bind('M', 'hint links spawn mpv --fs --loop {hint-url}')
