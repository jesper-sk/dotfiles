import XMonad

import XMonad.Util.EZConfig
import XMonad.Layout.ThreeColumns
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog


myLayout = tiled ||| Mirror tiled ||| Full ||| threeCol
    where
        tiled = Tall nmaster delta ratio
        threeCol = ThreeColMid nmaster delta ratio
        nmaster = 1
        ratio = 1/2
        delta = 3/100

myKeys = [ ("M-f"    , spawn "firefox")     
         ]

myNormalBorderColor = "#CDD6F4"
myFocusedBorderColor = "#F38BA8"

myConfig = def
        { modMask = mod4Mask
        , terminal = "alacritty"
        , layoutHook = myLayout
        , normalBorderColor = myNormalBorderColor
        , focusedBorderColor = myFocusedBorderColor
        }
        `additionalKeysP` myKeys

main :: IO ()
main = xmonad . ewmhFullscreen . ewmh . xmobarProp $ myConfig