# sddm-personal-theme
My personal SDDM Theme

# To-Do List
| Task | Done |
|--|--|
| Choose Background |  |
| Move Background to assets | x |
| Rework panel sizing | x |
| Insert User Avatar | ~ |
| Rework Components | ~ |
| Rework Assets | x |


# Preview
![Preview](./Preview/theme_preview.png)

# Dependencies
```
qt6-5compat qt6-declarative qt6-svg sddm
```

# Install
First clone the repository
If needed copy needed fonts into your fonts folder
```
sudo git clone https://github.com/akarumi/sddm-personal-theme.git /usr/share/sddm/themes/sddm-akarumi-theme
sudo cp /usr/share/sddm/themes/sddm-akarumi-theme/Fonts/* /usr/share/fonts/
```
After that edit `/etc/sddm.conf` or `/etc/sddm.conf.d/theme.conf` 
Change the `current` section to the following
```
Current=sddm-akarumi-theme
```
### Extra installation
Add your profile picture under `Assets/Avatars/username.face.icon`
