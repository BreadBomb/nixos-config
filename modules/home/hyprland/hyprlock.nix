{ inputs, pkgs, ...}: 
{
  home.packages = with pkgs; [
    hyprlock
  ];
  programs.hyprlock = {
    enable = true;
    settings = {
      # BACKGROUND
      background = [
        {
          monitor = "DP-1";
          path = "${inputs.self}/wallpapers/hyprlock.png";
          blur_passes = 0;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0.0;
        }
        {
          monitor = "DP-2";
          path = "${inputs.self}/wallpapers/2paggfqi38aa1.webp";
          blur_passes = 3;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0.0;
        }
      ];

      # GENERAL
      general = {
          no_fade_in = false;
          grace = 0;
          disable_loading_bar = false;
      };

      label = [
        # GREETINGS
        {
          monitor = "DP-1";
          text = "Welcome!";
          color = "rgba(216, 222, 233, .75)";
          font_size = 55;
          font_family = "SF Pro Display Bold";
          position = "150, 320";
          halign = "left";
          valign = "center";
        }
        # Time
        {
          monitor = "DP-1";
          text = ''cmd[update:1000] echo "<span>$(date +"%I:%M")</span>"'';
          color = "rgba(216, 222, 233, .75)";
          font_size = 40;
          font_family = "SF Pro Display Bold";
          position = "240, 240";
          halign = "left";
          valign = "center";
        }
        # Day-Month-Date
        {
          monitor = "DP-1";
          text = ''cmd[update:1000] echo -e "$(date +"%A, %B %d")"'';
          color = "rgba(216, 222, 233, .75)";
          font_size = 19;
          font_family = "SF Pro Display Bold";
          position = "217, 175";
          halign = "left";
          valign = "center";
        }
        # USER
        {
          monitor = "DP-1";
          text = "    $USER";
          color = "rgba(216, 222, 233, 0.80)";
          outline_thickness = 0;
          dots_size = 0.2; # Scale of input-field height, 0.2 - 0.8
          dots_spacing = 0.2; # Scale of dots' absolute size, 0.0 - 1.0
          dots_center = true;
          font_size = 16;
          font_family = "SF Pro Display Bold";
          position = "275, -140";
          halign = "left";
          valign = "center";
        }
        # CURRENT SONG
        {
          monitor = "DP-1";
          text = ''cmd[update:1000] echo "$(~/.config/hypr/Scripts/songdetail.sh)"'';
          color = "rgba(255, 255, 255, 0.65)";
          font_size = 14;
          font_family = "JetBrains Mono Nerd, SF Pro Display Bold";
          position = "210, 45";
          halign = "left";
          valign = "bottom";
        }
      ];

      # Profie-Photo
      image = {
          monitor = "DP-1";
          path = "~/.config/hypr/vivek.png";
          border_size = 2;
          border_color = "rgba(255, 255, 255, .75)";
          size = 95;
          rounding = -1;
          rotate = 0;
          reload_time = -1;
          reload_cmd = "";
          position = "270, 25";
          halign = "left";
          valign = "center";
      };

      # USER-BOX
      shape = {
          monitor = "DP-1";
          size = "320, 55";
          color = "rgba(255, 255, 255, .1)";
          rounding = -1;
          border_size = 0;
          border_color = "rgba(255, 255, 255, 1)";
          rotate = 0;
          xray = false; # if true, make a "hole" in the background (rectangle of specified size, no rotation)
          position = "160, -140";
          halign = "left";
          valign = "center";
      };

      # INPUT FIELD
      input-field  = {
          monitor = "DP-1";
          size = "320, 55";
          outline_thickness = 0;
          dots_size = 0.2; # Scale of input-field height, 0.2 - 0.8
          dots_spacing = 0.2; # Scale of dots' absolute size, 0.0 - 1.0
          dots_center = true;
          outer_color = "rgba(255, 255, 255, 0)";
          inner_color = "rgba(255, 255, 255, 0.1)";
          font_color = "rgb(200, 200, 200)";
          fade_on_empty = false;
          font_family = "SF Pro Display Bold";
          placeholder_text = "<i><span foreground='##ffffff99'>🔒  Enter Pass</span></i>";
          hide_input = false;
          position = "160, -220";
          halign = "left";
          valign = "center";
      };
    };
  };
}