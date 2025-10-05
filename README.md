# 🎆 Grovesyy's Assets - New Year Firework Display

A simple and effective New Year firework display script for QBCore servers.

---

## 🌟 Features

* **Automatic Fireworks** every **January 1st at 00:00**
* **Stops Automatically** at **00:15**
* **Manual Trigger** via `/fireworkshow` command
* **Multiple Firework Types**: `Battery`, `Rocket`, `Fountain`
* **Customizable Locations** via `config.lua`

---

## 📁 Installation

```bash
# 1. Place in your resources folder
cd resources

# 2. Add to your server.cfg
ensure firework
```

---

## 🛠️ Configuration

Edit `config.lua` to change firework positions and types.

```lua
Config.FireworkLocations = {
    vector4(-1934.69, -1333.48, 20.74, "Battery"),
    vector4(-1800.69, -1333.48, 20.74, "Rocket"),
    -- Add more as needed
}
```

---

## 💻 File Structure

* `server.lua` - Time checks and server-side logic
* `client.lua` - Firework visual effects
* `config.lua` - Location and type setup
* `fxmanifest.lua` - Resource manifest

---

## 🚀 Usage

* **Auto-launches** at **00:00 on Jan 1st**
* **Stops** at **00:15 on Jan 1st**
* Use `/fireworkshow` to manually trigger the show

---

## 🙏 Credits

Made with 💥 by **Grovesyy's Assets**

---

## 📜 License

Use it how you want. Happ
