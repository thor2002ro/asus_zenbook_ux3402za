# asus_zenbook_ux3402za
sound fix 

edit ssdt-csc3551.dsl if needed 

build it 
```iasl -tc ssdt-csc3551.dsl```

copy it in /boot 
```sudo cp -f ssdt-csc3551.aml /boot```

copy grub script
```sudo cp -f 01_acpi /etc/grub.d```
```sudo chmod +x /etc/grub.d/01_acpi```

update grub config
```sudo update-grub```

reboot
