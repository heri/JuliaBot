JuliaBot
========

![screenshot julia](https://github.com/heri/juliabot/blob/master/juliabot.jpg?raw=true =750x)

Julia is here to make your life easier:

* set reminders for your next to-dos,
* check if your server is up periodically and otherwise updates with an alert
* See memory usage, restart postgresql, restart server etc.
* take a screenshot of your homepage, for testing purposes
* do math expression or calculations
* lookup weather in a place, bitcoin exchange rate, EUR-CAD exchange rate etc.

Julia is available 24/7 on Telegram to assist you in your needs.

**WARNING** Work in progress, especially for the server management features. Remaining todos: chit-chat (machine learning), learning with set/get for info such as work and home info etc.

Requirements
------------
* Lua
* Redis

Install
-------
Install the following with apt-get or with brew `libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev`. Then:

```bash
./launch.sh install
./launch.sh
$ sed -i "s/yourusername/$(whoami)/g" etc/telegram.conf
$ sed -i "s_telegrambotpath_$(pwd)_g" etc/telegram.conf
$ sudo cp etc/telegram.conf /etc/init/
$ sudo start telegram # To start it
$ sudo stop telegram # To stop it
```


Bot Commands
------------
<table>
  <thead>
    <tr>
      <td><strong>Name</strong></td>
      <td><strong>Description</strong></td>
      <td><strong>Usage</strong></td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>help</td>
      <td>Help plugin. Get info from other plugins. </td>
      <td>!help: Show list of plugins.<br>!help all: Show all commands for every plugin.<br>!help [plugin name]: Commands for that plugin.<br></td>
    </tr>
    <tr>
      <td>btc</td>
      <td>Bitcoin global average market value (in EUR or USD)</td>
      <td>!btc [EUR|USD] [amount]</td>
    </tr>
    <tr>
      <td>calculator</td>
      <td>Calculate math expressions with mathjs API</td>
      <td>!calc [expression]: evaluates the expression and sends the result.</td>
    </tr>
    <tr>
      <td>eur</td>
      <td>Real-time EUR to CAD market price</td>
      <td>!eur [CAD]</td>
      </tr>
    <tr>
      <td>gnuplot</td>
      <td>Gnuplot plugin</td>
      <td>!gnuplot [single variable function]: Plot single variable function.</td>
    </tr>
    <tr>
      <td>google</td>
      <td>Searches Google and send results</td>
      <td>!google [terms]: Searches Google and send results</td>
    </tr>
    <tr>
      <td>gps</td>
      <td>generates a map showing the given GPS coordinates</td>
      <td>!gps latitude,longitude: generates a map showing the given GPS coordinates</td>
    </tr>
    <tr>
      <td>hackernews</td>
      <td>Show top 7 hacker news (ycombinator.com)</td>
      <td>!hackernews</td>
    </tr>
    <tr>
      <td>imdb</td>
      <td>IMDB plugin for Telegram</td>
      <td>!imdb [movie]</td>
    </tr>
    <tr>
      <td>isup</td>
      <td>Check if your website or server is up.</td>
      <td>!isup [host]: Performs a HTTP request or Socket (ip:port) connection<br>!isup cron [host]: Every 5mins check if host is up. (Requires privileged user)<br>!isup cron delete [host]: Disable checking that host.<br></td>
    </tr>
    <tr>
      <td>location</td>
      <td>Gets information about a location, maplink and overview</td>
      <td>!loc (location): Gets information about a location, maplink and overview</td>
    </tr>
    <tr>
      <td>lyrics</td>
      <td>Gets lyrics</td>
      <td>!loc (location): Gets information about a location, maplink and overview</td>
    </tr>
    <tr>
      <td>pili</td>
      <td>Shorten an URL with pili.la service</td>
      <td>!pili [url]: Short the url</td>
    </tr>
    <tr>
      <td>remind</td>
      <td>Manage reminders</td>
      <td>!remind [delay: 2hms] text</td>
    </tr>
    <tr>
      <td>rss</td>
      <td>Manage User/Chat RSS subscriptions.</td>
      <td>!rss: Get the rss subscriptions.<br>!rss subscribe (url): Subscribe to that url.<br>!rss unsubscribe (id): Unsubscribe of that id.<br>!rss sync: Sync the rss subscriptios now. Only sudo users can use this option.<br></td>
    </tr>
    <tr>
      <td>search_youtube</td>
      <td>Search video on YouTube and send it.</td>
      <td>!youtube [term]: Search for a YouTube video and send it.</td>
    </tr>
    <tr>
      <td>server</td>
      <td>Execute a shell command on your server.</td>
      <td>!server [command]</td>
    </tr>
    <tr>
      <td>stats</td>
      <td>Plugin to update user stats.</td>
      <td>!stats: Returns a list of Username [telegram_id]: msg_num</td>
    </tr>
    <tr>
      <td>tex</td>
      <td>Convert LaTeX equation to image</td>
      <td>!tex [equation]: Convert LaTeX equation to image</td>
    </tr>
    <tr>
      <td>time</td>
      <td>Displays the local time in an area</td>
      <td>!time [area]: Displays the local time in that area</td>
    </tr>
    <tr>
      <td>translate</td>
      <td>Translate some text</td>
      <td>!translate text. Translate the text to English.<br>!translate target_lang text.<br>!translate source,target text<br></td>
    </tr>
    <tr>
      <td>twitter_send</td>
      <td>Sends a tweet</td>
      <td>!tw [text]: Sends the Tweet with the configured account.</td>
    </tr>
    <tr>
      <td>weather</td>
      <td>weather in that city (Montreal is default)</td>
      <td>!weather (city)</td>
      </tr>
    <tr>
      <td>webshot</td>
      <td>Take an screenshot of a web.</td>
      <td>!webshot [url]</td>
    </tr>
    <tr>
      <td>wiki</td>
      <td>Searches Wikipedia and send results</td>
      <td>!wiki [terms]: Searches wiki and send results<br>!wiki_set [wiki]: sets the wikimedia site for this chat<br>!wiki_get: gets the current wikimedia site<br></td>
    </tr>
  </tbody>
</table>
