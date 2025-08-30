#NOTE THIS WAS FULLY CONVERTED BY CHAT GPT

import os
import time

# === Global Settings ===
correctconf = True
shipments = [{"ploc": "NONE", "type": "NONE", "dloc": "NONE"} for _ in range(10)]
activeseek = False  # tracks whether we’re editing via viewer

# === Utility Functions ===
def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def pause(msg="Press Enter to continue…"):
    input(msg)

def get_input(prompt):
    return input(f"{prompt}: ").strip()

def confirm_input(value, prompt="IS THIS CORRECT"):
    if not correctconf:
        return True
    while True:
        clear_screen()
        choice = input(f"{prompt} {value} (y/n)?: ").lower()
        if choice in ("y", "n"):
            return choice == "y"
        print("Invalid response. Please type y or n.")
        time.sleep(1)

# === Menu Functions ===

def settings_menu():
    global correctconf
    while True:
        clear_screen()
        print("Settings Menu\n0=Return 1=Color 2=Correct Confirmation 3=Debugger")
        sel = get_input("Response")
        if sel == "0":
            return
        if sel == "1":
            clear_screen()
            print("Color customization not supported in this version.")
            pause()
        elif sel == "2":
            clear_screen()
            print(f"Confirmation is currently {'enabled' if correctconf else 'disabled'}")
            choice = get_input("Selection (0=disabled, 1=enabled)")
            if choice == "0":
                correctconf = False
            elif choice == "1":
                correctconf = True
            else:
                print("Invalid selection.")
                time.sleep(1)
        elif sel == "3":
            debugger_menu()
        else:
            print("Invalid response.")
            time.sleep(1)

def debugger_menu():
    global shipments
    while True:
        clear_screen()
        print("Debugger Options\n0=Return 1=Set All To BURGER 2=RESET ALL")
        sel = get_input("Response")
        if sel == "0":
            return
        if sel == "1":
            for s in shipments:
                s.update({"ploc":"BURGER", "type":"BURGER", "dloc":"BURGER"})
        elif sel == "2":
            for s in shipments:
                s.update({"ploc":"NONE", "type":"NONE", "dloc":"NONE"})
        else:
            print("Invalid response.")
            time.sleep(1)

def start():
    global activeseek
    clear_screen()
    count = get_input("Please select number of shipments (max 10)")
    if not count.isdigit() or not (1 <= int(count) <= 10):
        print("Invalid number.")
        time.sleep(1)
        return
    n = int(count)
    activeseek = False

    for i in range(n):
        idx_label = f"{i+1}{'ST' if i==0 else 'TH' if i>=3 else 'ND' if i==1 else 'RD'}"
        # Pickup location
        while True:
            clear_screen()
            ploc = get_input(f"{idx_label} Shipment • Pickup Location")
            if confirm_input(ploc):
                shipments[i]["ploc"] = ploc
                break
        # Item type
        while True:
            clear_screen()
            itype = get_input(f"{idx_label} Shipment • Item Type")
            if confirm_input(itype):
                shipments[i]["type"] = itype
                break
        # Dropoff location
        while True:
            clear_screen()
            dloc = get_input(f"{idx_label} Shipment • Drop‑Off Location")
            if confirm_input(dloc):
                shipments[i]["dloc"] = dloc
                break

    view()

def view():
    global activeseek
    while True:
        clear_screen()
        print("PICKUP LOCATION         ITEM TYPE              DROP OFF LOCATION")
        print("-" * 60)
        for s in shipments:
            print(f"{s['ploc']:<22}{s['type']:<22}{s['dloc']:<22}")
        print("\n1=Reload Viewer  2=Edit Item  3=Menu")
        resp = get_input("Response")
        if resp == "1":
            continue
        elif resp == "2":
            activeseek = True
            seeker_menu()
            return
        elif resp == "3":
            return
        else:
            print("Invalid response.")
            time.sleep(1)

def seeker_menu():
    global activeseek
    while True:
        clear_screen()
        print("Seeker – Choose item to edit:")
        options = ["0=Return"] + [
            f"{i+1}={shipments[i]['type']}" for i in range(len(shipments))
        ]
        print(" ".join(options))
        sel = get_input("Response")
        if sel == "0":
            activeseek = False
            return
        if sel.isdigit() and 1 <= int(sel) <= 10:
            start_index = int(sel) - 1
            # Jump into that individual run
            activeseek = True
            # Re-enter pickup → type → dropoff for that index only
            for field in ("ploc", "type", "dloc"):
                while True:
                    clear_screen()
                    prompt = {
                        "ploc": "Pickup Location",
                        "type": "Item Type",
                        "dloc": "Drop‑Off Location"
                    }[field]
                    val = get_input(f"Editing shipment {sel} • {prompt}")
                    if confirm_input(val):
                        shipments[start_index][field] = val
                        break
            activeseek = False
            return
        else:
            print("Invalid selection.")
            time.sleep(1)

# === Main Menu Loop ===
def main_menu():
    while True:
        clear_screen()
        print("Welcome to the Star Citizen Ship Calculator v0.1 (Python Version)\n")
        print("1=Start  2=Settings  3=Viewer")
        resp = get_input("Response")
        if resp == "1":
            start()
        elif resp == "2":
            settings_menu()
        elif resp == "3":
            view()
        else:
            print("Invalid response.")
            time.sleep(1)

if __name__ == "__main__":
    main_menu()
