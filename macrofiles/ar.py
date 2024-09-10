from tkinter import * 
from tkinter import messagebox 
from tkinter import ttk
from tkinter.ttk import * 
from midea_beautiful import appliance_state

def ar():
    try:
        appliance = appliance_state(
            address="192.168.15.7",  # APPLIANCE_IP_ADDRESS 
            token="F2E29E29825DA32D518A8F602414DF7FCD282FE037299D65D392AE879801C41C601B57A990299D7F7926CF9DA203648F3E13167CD1489DA5F8E38816023F2C14",  # TOKEN obtained from Midea API
            key="ac931321ed8c44d5ab33a7d46f852498f02b676db7b14421a0ee9ed00e3d47ba",  # Token KEY obtained from Midea API
        )
    except:
        messagebox.showerror("showerror", "Error") 
    return appliance
target_temperature = 0
indoor_temperature = 0
running = 0

def reload():
    global target_temperature
    global indoor_temperature
    global running
    target_temperature = int(ar().state.target_temperature)
    l1.config(text = f'{target_temperature} ℃')
    indoor_temperature = ar().state.indoor_temperature
    l2.config(text = f'{indoor_temperature} ℃')


root = Tk()
root.title('Midea')

root.resizable(0,0)
# root.overrideredirect(True)
root.geometry("-0-50")
style = ttk.Style()
style.configure("BW.TLabel", background="white")

frm1 = ttk.Frame(root, padding=20)
frm2 = ttk.Frame(frm1, padding=20, border=20, style="BW.TLabel")
frm3 = ttk.Frame(frm1, width="500")
l1 = Label(frm2, text = f'{target_temperature} ℃', font = ("Arial", 30), style="BW.TLabel")
l2 = Label(frm2, text = f'⌂ {indoor_temperature} ℃', font = ("Arial", 14), style="BW.TLabel")

def liga_desliga_ar():
    if(running):
        ar().set_state(running=0)
    else:
        ar().set_state(running=1)

def set_temperature(x):
    ar().set_state(target_temperature=x)
    reload()

def Button_1(event=None):
    global target_temperature
    target_temperature -= 1
    l1.config(text = f'{target_temperature} ℃')
    set_temperature(target_temperature)
    reload()
    

def Button_2(event=None):
    global target_temperature
    target_temperature += 1
    l1.config(text = f'{target_temperature} ℃')
    set_temperature(target_temperature)
    reload()

def Button_3(event=None):
    liga_desliga_ar()
    reload()

def Button_4(event=None):
    reload()

b1 = Button(frm1, text = " - ", command = Button_1)

b2 = Button(frm1, text = " + ", command = Button_2)
b3 = Button(frm3, text = " ⭕ ", command = Button_3)
b4 = Button(frm3, text = " ⏳ ", command = Button_4)
root.bind('1',Button_1)
root.bind('3',Button_2)

frm1.grid()
frm3.pack()
frm2.pack()
b3.pack(side = 'left')
b4.pack(side = 'right')
l1.pack()
l2.pack()
b1.pack(side = 'left')
b2.pack(side = 'right')
reload()
root.mainloop()
