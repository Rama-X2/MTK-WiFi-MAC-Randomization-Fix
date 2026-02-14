# 🌐 Static Network Lock Module
Persistent IP & MAC Address Enforcement for Android (Magisk Module)

---

## 📌 Overview
Static Network Lock is a Magisk module designed to enforce a persistent
(static) IP address and MAC address configuration on Android devices.

This module is intended for devices and custom ROMs that:
- Randomize MAC address automatically
- Renew DHCP IP aggressively
- Do not provide a built-in option to disable MAC randomization

Tested on:
- SuperiorOS Android 13
- Redmi 9A (MediaTek Helio G25)
- Redmi 10A (MediaTek Helio G25)

---

## 🎯 Purpose
Some custom ROM builds force:
- MAC randomization
- Frequent DHCP renew
- Automatic network identity refresh

This module attempts to:
- Lock WiFi MAC address to hardware value
- Prevent unwanted IP renewal
- Stabilize network identity
- Improve compatibility with IP-bound services

---

## ⚙️ How It Works
The module:
- Patches system properties at boot
- Overrides WiFi randomization flags
- Enforces persistent network parameters
- Applies settings via post-fs-data / service script

No framework modification.
No system partition modification.
Fully systemless via Magisk.

---

## 🧪 Tested Environment
- Android 13
- SuperiorOS
- Magisk v26+
- MediaTek Helio G25 devices

---

## ⚠️ Limitations
Due to Android 10+ network stack hardening:
- Some IP renewals may still occur
- DHCP lease behavior depends on router
- Vendor blobs may override runtime configs

This module does NOT:
- Modify router settings
- Hack DHCP server
- Permanently disable kernel network services

---

## 🔐 Safety
- No SELinux disable
- No kernel patch
- No boot image modification beyond Magisk injection

---

## 📦 Installation
1. Flash via Magisk
2. Reboot
3. Clear WiFi saved network
4. Reconnect

---

## 🧰 Troubleshooting
If IP still changes:
- Disable Private DNS
- Forget & reconnect WiFi
- Check router DHCP lease time
- Verify MAC randomization is off

---

## 📜 License

