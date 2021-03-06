#!/bin/bash
#touch /tmp/toots
exec 1> >(logger -s -t $(basename $0)) 2>&1
export DISPLAY=:0.0
position=left



intern=eDP-1
#extern=DP-2
extern=`xrandr --listmonitors | grep "^ 1" | awk '{print $4}'`


#extern=HDMI-2
polybar_config=~/.config/polybar/polybar_top

function kill_poly()
{
  # Terminate already running bar instances
  killall  polybar

  # Wait until the processes have been shut down
  while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
}

function laptop()
{
  kill_poly
  xrandr --output "$extern" --off --output "$intern" --auto
  MONITOR=${intern} polybar top -c ${polybar_config} &
}


function dual()
{
  kill_poly
  xrandr --output "$intern" --primary --auto
  xrandr --output "$extern" --"$position"-of "$intern" --auto
  MONITOR=${intern} polybar top -c ${polybar_config} &
  MONITOR=${extern} polybar top -c ${polybar_config} &
  }

function external()
{
  kill_poly
  echo "lid closed, external detected"
  xrandr --output "$extern" --primary --auto
  xrandr --output "$intern" --off
  MONITOR=${extern} polybar top -c ${polybar_config} &
}


if xrandr | grep "$extern disconnected"; then
  echo "external disconnected, running laptop()"
  laptop


elif grep "closed" /proc/acpi/button/lid/LID0/state ; then
  echo "Lid closed, external assumed"
  external

else
  echo "configured external is not disconnected, and lid is open.  assuming both!"
  dual 
fi







