# asus_zenbook_ux3402za

> You must **disable Secure Boot** from BIOS before attempting this fix. Also, Secure Boot must remain disabled afterwards for the sound to continue to work.

Steps for the sound fix:

* edit ssdt-csc3551.dsl if needed (optional)

* build it

```iasl -tc ssdt-csc3551.dsl```

* copy it in /boot

```sudo cp -f ssdt-csc3551.aml /boot```

* copy grub script

```sudo cp -f 01_acpi /etc/grub.d```

```sudo chmod +x /etc/grub.d/01_acpi```

* Update grub config
  * Debian / Ubuntu based distributions

    ```sudo update-grub```

  * Fedora / RHEL-based distributions

    ```sudo grub2-mkconfig -o /etc/grub2.cfg```

    ```sudo grub2-mkconfig -o /etc/grub2-efi.cfg```

  * Arch based distributions

    ```grub-mkconfig -o /boot/grub/grub.cfg```

* reboot
