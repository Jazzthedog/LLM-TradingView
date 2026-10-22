# My Quant Terminal quick guide

Quant Terminal is a trading app that runs on this computer and opens in your web browser.
It is installed in `E:\LLM-TradingView\quant-terminal`.

## Start it

Double-click **Start Quant Terminal.bat** in `E:\LLM-TradingView`.

It starts the app in the background and opens it in your browser. If the app is already
running, it just opens the browser again.

Your app's address is usually http://localhost:3777. If that doesn't work, use the address
the start window prints.

Other ways to start it:

- Double-click `start.bat` inside the `quant-terminal` folder.
- Or run this from `E:\LLM-TradingView`:

  ```
  node quant-terminal/scripts/launch.js
  ```

## Stop it

Run this from `E:\LLM-TradingView`:

```
node quant-terminal/scripts/stop.js
```

The app keeps running in the background until you stop it or turn off the computer.

## Try these first

- Start typing any symbol to switch the chart.
- Add as many indicators as you like. There's no limit per chart.
- Switch the layout to 4 charts.
- Press **Replay** to play past prices back bar by bar.
- Open the **Strategy tester** tab at the bottom.

## Good to know

- **Your saved stuff** (charts, alerts, watchlists) lives in the `data` folder inside
  `quant-terminal`. It is not uploaded to GitHub.
- **Your watchlist** starts with BTC, ETH, SOL, SPY, QQQ, NVDA, AAPL and EURUSD. You can
  change it in the app.
- **Custom indicators** go in the `custom` folder. See `custom-indicators.md` in this folder.
- **Want something it doesn't do?** Ask Claude. For example: "mark the London open on my
  charts", "send my alerts to Discord", or "add an indicator that marks three green
  candles in a row".

## What it can't do

- Alerts only work while this computer is on and the app is running.
- The free data sources only have a short history of minute-by-minute and hourly US stock
  prices. Daily history is fine.
- It doesn't trade real money on its own. It can connect to PTQ for that.

## If something goes wrong

Run this from `E:\LLM-TradingView` to test the app and your internet data sources:

```
node quant-terminal/scripts/check.js
```

The last line says READY when everything works. If it says NOT READY, the lines marked
FAIL tell you what's wrong.

## Save your changes to GitHub

Your project is at https://github.com/Jazzthedog/LLM-TradingView. After changing files,
run these from `E:\LLM-TradingView`:

```
git add -A
git commit -m "Describe what you changed"
git push
```

Or just ask Claude to do it.
