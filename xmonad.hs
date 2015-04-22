import XMonad
import XMonad.Actions.CycleWS
import XMonad.Config.Gnome
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys,additionalKeysP)
import System.IO

myManageHook = composeAll
    [ manageHook gnomeConfig
    , className =? "Gimp"      --> doFloat
    , className =? "Vncviewer" --> doFloat
    , className =? "Unity-2d-panel" --> doIgnore
    , className =? "Unity-2d-launcher" --> doFloat
    , isFullscreen --> doFullFloat
    , className =? "VirtualBox" --> doShift "9"
    ]

main = do
    xmproc <- spawnPipe "xmobar ~/.xmobarrc"
    xmonad $ gnomeConfig
        { manageHook = manageDocks <+> myManageHook
                        <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , normalBorderColor = "#ffffff"
        , focusedBorderColor = "#0087af"
        , logHook = logHook' xmproc
        , workspaces = workspaces'
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        , terminal = "urxvt"
        }
        `additionalKeysP`
        [
          ("M-<left>",      prevWS)
        , ("M-<right>",     nextWS)
        , ("M-S-<left>",    shiftToPrev)
        , ("M-S-<right>",   shiftToNext)
        ]
        `additionalKeys`
        [
          ((mod4Mask .|. shiftMask, xK_p ), spawn "dmenu_run -b -fn 'DejaVu Sans Mono-11'")
        ]

-- workspaces
-- 1 is for local terminals, 2 is for remote terminals or another Emacs if I
-- have an external monitor plugged in
workspaces' :: [WorkspaceId]
workspaces' = ["1-Local", "2-Remote", "3-Emacs", "4-Web", "5", "6", "7", "8", "9"]

logHook' :: Handle ->  X ()
logHook' xmproc = dynamicLogWithPP $ customPP { ppOutput = hPutStrLn xmproc }

-- bar
customPP :: PP
customPP = xmobarPP { ppCurrent = xmobarColor "#008700" "" . wrap "[" "]"
                     , ppTitle = (\s -> "")
                     , ppLayout = (\s -> "")
                     , ppSep =  "<fc=grey> | </fc>"
                     , ppHiddenNoWindows = xmobarColor "#0087af" ""
                     , ppUrgent = xmobarColor "red" "" . wrap "[" "]"
                     }
