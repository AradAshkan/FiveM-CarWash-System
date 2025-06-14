# 🚗✨ Arad Car Wash | FiveM Script

A lightweight, optimized and fully configurable **Car Wash Script** built for FiveM servers using **ESX Legacy**.  
Let your players clean their dirty vehicles with interactive locations, immersive animations, and optional billing logic. 💸🧽

## 🔧 Features
- 🧼 Multiple configurable car wash locations
- 💸 Charge players via bank or cash
- 🧠 ESX Legacy framework support
- 🚗 Double-wash feature for extra effect
- 🗺️ Map blips toggle per location
- 🎬 Particle effects & optional props

## ⚙️ Configuration (via `config.lua`)
- Set framework: `esxlegacy`
- Enable/disable blips
- Enable washing only dirty vehicles
- Set prices, accounts, UI texts, and more
- Customize locations with vector3 and props

## 🧪 How It Works
1. Players approach a car wash marker.
2. Press the interaction key (`E`) to clean their vehicle.
3. The system checks if the player has enough funds (bank or cash).
4. Plays particle effects and optionally shows animated props.
5. Cleans the vehicle and deducts funds.

## 📂 Installation
1. Add the resource folder to your `resources` directory.
2. Add the following line to your `server.cfg`:
3. Configure `config.lua` to match your server needs.
4. Make sure your server uses ESX Legacy and has the shared object export.

## 🧠 Dependencies
- ✅ ESX Legacy  
- ❌ No database dependency  
- ❗ No support for QBCore in current version **(Coming Soon)**

## 📍 Default Locations
- Legion Square: `(23.68, -1391.92, 29.32)`
- Little Seoul: `(-699.84, -934.0, 19.0)`
- Paleto Bay: `(-216.4, 6199.92, 31.48)`

## ❤️ Credits
Made with love by **Arad Ashkan**  
Feel free to customize and contribute to improve this project!
