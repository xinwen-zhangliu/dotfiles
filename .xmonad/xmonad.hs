-- xmonad.hs
-- xmonad example config file.
--
-- A template showing all available configuration hooks,
-- and how to override the defaults in your own xmonad.hs conf file.
--
-- Normally, you'd only override those defaults you care about.
--

--
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LambdaCase       #-}

module Main (main) where
--
-- Imports
--
import           Control.Monad                       (liftM2)
import qualified Data.Map                            as M
import           Data.Monoid                         (All)

import qualified XMonad.StackSet                     as W
import           XMonad




import System.Exit
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Util.Dmenu
import XMonad.Actions.Warp
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Util.Themes
import XMonad.Layout.Tabbed
import System.IO
import XMonad.ManageHook
import XMonad.Layout.Fullscreen
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

import XMonad.Util.ClickableWorkspaces
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.Spacing
import qualified XMonad.Util.Hacks as Hacks
import XMonad.Prompt.Workspace
import XMonad.Actions.WorkspaceNames
import Data.Maybe (fromJust)
import XMonad.Layout.Hidden
import XMonad.Layout.Grid
import XMonad.Layout.NoBorders
import XMonad.Layout.Renamed


-- The preferred terminal program, which is used in a binding below and by
-- certain contrib modules.
--
myTerminal      = "alacritty"

-- Whether focus follows the mouse pointer.
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

-- Whether clicking on a window to focus also passes the click to the window
myClickJustFocuses :: Bool
myClickJustFocuses = False

-- Width of the window border in pixels.
--
myBorderWidth   = 1

-- modMask lets you specify which modkey you want to use. The default
-- is mod1Mask ("left alt").  You may also consider using mod3Mask
-- ("right alt"), which does not conflict with emacs keybindings. The
-- "windows key" is usually mod4Mask.
--
myModMask       = mod1Mask

-- The default number of workspaces (virtual screens) and their names.
-- By default we use numeric strings, but any string may be used as a
-- workspace name. The number of workspaces is determined by the length
-- of this list.
--
-- A tagging example:
--
-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]
--
myWorkspaces    = ["<fn=3>\xf0c9</fn>" -- 1
                  ,"<fn=2>\xf4b5</fn>" -- 2
                  ,"<fn=2>\xf059f</fn>" -- 3
                  ,"<fn=1>\xf0ca6</fn>" -- 4
                  , "<fn=1>\xf0ca8</fn>" --5 
                  ,"<fn=1>\xf0caa</fn>" -- 6
                  ,"<fn=1>\xf0cac</fn>" -- 7
                  ,"<fn=1>\xf0cae</fn>" -- 8 
                  ,"<fn=2>\xf392</fn>" -- 9
                  ] 
--myWorkspaces = ["1", "2", "3", "4",  "5","6","7","8" , "9"]
--"1: <fn=2>\xe632</fn>","<fn=2>\xf4b5</fn>",
-- Border colors for unfocused and focused windows, respectively.
--
myNormalBorderColor  = "#323232"
myFocusedBorderColor = "#323232"--"#646464"

------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
--
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    -- launch a terminal
    [ ((modm ,            xK_t     ), spawn $ XMonad.terminal conf)
    -- launch rofi
    , ((modm, xK_p ),spawn "rofi -show drun -show-icons")
    -- hiddenwindows
    , ((mod4Mask, xK_backslash), withFocused hideWindow)
    , ((mod4Mask .|. shiftMask, xK_backslash), popOldestHiddenWindow)
    -- togglestrutskey
    , ((modm, xK_b     ), sendMessage ToggleStruts)
    -- volume keys
    , ((0, 0x1008dd12), spawn "pactl set-sink-mute @DEFAULT_SINK@ toggle")--xF86XK_AudioMute
    , ((0, 0x1008ff11), spawn "pactl set-sink-volume @DEFAULT_SINK@ -4%")--xF86XK_AudioLowerVolume
    , ((0, 0x1008ff13), spawn "pactl set-sink-volume @DEFAULT_SINK@ +4%")--xF86XK_AudioRaiseVolume

    -- launch dmenu
    , ((modm,               xK_s     ), spawn "dmenu_run")

    -- launch gmrun
    , ((modm .|. shiftMask, xK_s     ), spawn "gmrun")

    -- close focused window
    , ((modm,               xK_c     ), kill)

     -- Rotate through the available layout algorithms
    , ((modm,               xK_space ), sendMessage NextLayout)

    --  Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)

    -- Resize viewed windows to the correct size
    , ((modm,               xK_n     ), refresh)

    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)

    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)

    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp  )

    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster  )

    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)

    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )

    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )

    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)

    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)

    -- Push window back into tiling
    , ((modm,               xK_f     ), withFocused $ windows . W.sink)

    -- Increment the number of windows in the master area
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))

    -- Deincrement the number of windows in the master area
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))

    -- Toggle the status bar gap
    -- Use this binding with avoidStruts from Hooks.ManageDocks.
    -- See also the statusBar function from Hooks.DynamicLog.
    --
    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)

    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))

    -- Restart xmonad
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")

    -- Run xmessage with a summary of the default keybindings (useful for beginners)
    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))

    -- Take screenshot
    , ((0, 0xff61), spawn "maim ~/screenshots/$(date +%s).png")

    -- Take selection screenshot
    , ((controlMask .|. shiftMask, xK_s), spawn "maim -s -u ~/screenshots/$(date +%s).png | xclip -selection clipboard -t image/png -i")

    -- Clear terminal
    --, ((controlMask, xK_l), spawn "tput reset")
    ]
    ++

    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{a,d}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{a,d}, Move client to screen 1, 2, or 3
    --
    [((m .|. mod4Mask, key), screenWorkspace sc >>= flip whenJust (windows . f))
    | (key, sc) <- zip  [xK_q, xK_w] [0,1]
    , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

    ++

    --
    -- F9, set current layout to us
    -- F10, turn on white leds
    -- F11, set current layout to latam
    --
    [((0, 0xffc7), spawn "g213-led -a ffffff")
        , ((0, 0xffc6), spawn "setxkbmap -layout us")
        , ((0, 0xffc8), spawn "setxkbmap -layout latam")]
        --, ((modm, xK_f), spawn "lf")

    ++
    
    -- mod-{e}, launch emacs
    
    [((modm, xK_e), spawn "emacsclient -c -a 'emacs'")]
    ++
    --
    -- mod-{v}, launch vimb
    --
    [((modm, xK_v), spawn "vimb")]


------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
--
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

------------------------------------------------------------------------
-- Layouts:

-- You can specify and transform your layouts by modifying these values.
-- If you change layout bindings be sure to use 'mod-shift-space' after
-- restarting (with 'mod-q') to reset your layout state to the new
-- defaults, as xmonad preserves your old layout settings by default.
--
-- The available layouts.  Note that each layout is separated by |||,
-- which denotes layout choice.
myLayout = hiddenWindows (avoidStruts (tiled ||| Mirror tiled ||| full ||| Grid))
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = renamed [Replace "Tall"]
       $ spacingRaw False (Border 0 0 0 0)
       True (Border 10 10 10 10) True
       $ Tall nmaster delta ratio

     full = renamed [Replace "Full"]
       $ spacingRaw True (Border 0 0 0 0)
       True (Border 10 10 10 10) True
       $ noBorders (Full)
     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 3/100

 
------------------------------------------------------------------------
-- Window rules:

-- Execute arbitrary actions and WindowSet manipulations when managing
-- a new window. You can use this to, for example, always float a
-- particular program, or have a client always appear on a particular
-- workspace.
--
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook = composeAll
    [ className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore

    , resource  =? "glade-previewer" --> doFloat
   
    , isFullscreen --> doFullFloat
    , className =? "steam" --> doCenterFloat]

------------------------------------------------------------------------
-- Event handling

-- * EwmhDesktops users should change this to ewmhDesktopsEventHook
--
-- Defines a custom handler function for X Events. The function should
-- return (All True) if the default handler is to be run afterwards. To
-- combine event hooks use mappend or mconcat from Data.Monoid.
--
-- myEventHook =

------------------------------------------------------------------------
-- Status bars and logging

-- Perform an arbitrary action on each internal state change or X event.
-- See the 'XMonad.Hooks.DynamicLog' extension for examples.
--
myLogHook = return ()

------------------------------------------------------------------------
-- Startup hook

-- Perform an arbitrary action each time xmonad starts or is restarted
-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize
-- per-workspace layout choices.
--
-- By default, do nothing.
myStartupHook = do 
  spawn "emacs --daemon"

------------------------------------------------------------------------
-- Command to launch the bar.
       
-- myBar = "xmobar"--"taffybar"

-- -- -- Custom PP, configure it as you like. It determines what is being written to the bar.

-- addActions :: [(String, Int)] -> String -> String
-- addActions [] ws = ws
-- addActions (x:xs) ws = addActions xs (actionPrefix ++ k ++ actionButton ++ show b ++ ">" ++ ws ++ actionSuffix)
--     where k = fst x
--           b = snd x


-- grey1, grey2, grey3, grey4, cyan, orange :: String
-- grey1  = "#2B2E37"
-- grey2  = "#555E70"
-- grey3  = "#697180"
-- grey4  = "#8691A8"
-- cyan   = "#8BABF0"
-- orange = "#C45500"

-- actionPrefix, actionButton, actionSuffix :: [Char]
-- actionPrefix = "<action=`xdotool key super+"
-- actionButton = "` button="
-- actionSuffix = "</action>"

-- myWorkspaceIndices :: M.Map [Char] Integer
-- myWorkspaceIndices = M.fromList $ zip myWorkspaces [1..]

-- clickable :: [Char] -> [Char] -> [Char]
-- clickable icon ws = addActions [ (show i, 1), ("q", 2), ("Left", 4), ("Right", 5) ] icon
--                     where i = fromJust $ M.lookup ws myWorkspaceIndices

myPP = xmobarPP { ppCurrent = xmobarColor "#ffffff" "" . wrap " " " "
                , ppTitle = xmobarColor "white" "" . shorten 100
                , ppOrder  = \(ws : l : _ : _ ) -> [ws,l]
                , ppVisible = xmobarColor "gray" "" . wrap "  " "  "
                , ppHidden = xmobarColor "gray" "" . wrap "  " "  "
--                , ppHiddenNoWindows = xmobarColor "gray"  "" . wrap "  " "  "
--                , ppVisibleNoWindows = xmobarColor "gray" ""
--                , ppRename = xmobarRaw
                  , ppVisibleNoWindows = Just (xmobarColor "gray" "" .  wrap "  " "  ")
--                  , ppHidden = xmobarColor grey2 "" . clickable wsIconHidden
                  , ppHiddenNoWindows = xmobarColor "gray" "" .   wrap "  " "  "
                }
  where
         wsIconFull   = "  <fn=2>\xf111</fn>   "
         wsIconHidden = "  <fn=2>\xf111</fn>   "
         wsIconEmpty  = "  <fn=2>\xf10c</fn>   "


mySB :: StatusBarConfig
mySB = statusBarProp "xmobar" (clickablePP myPP)

  -- myIconConfig :: IconConfig
  -- myIconConfig = def { iconConfigIcons  = myIcons
  --                    , iconConfigFmt    = iconsFmtReplace (wrapUnwords "" "")
  --                    , iconConfigFilter = iconsGetFocus
  --                    }
  --  where
  --   myIcons :: Query [String]
  --   myIcons = composeAll
  --     [ className =? "discord" --> appIcon "<fn=3>\xf392</fn>"
  --     , className =? "Discord" --> appIcon "<fn=3>\xf268</fn>"
  --     , className =? "firefox" --> appIcon "<fn=3>\xf269</fn>"
  --     , className =? "Brave-browser" --> appIcon "<fn=3>\xf268</fn>"
  --     , className =? "St" --> appIcon "<fn=2>\xe795</fn>"
  --     , className =? "Emacs" --> appIcon "<fn=4>\xe926</fn>"
  --     , className =? "code-oss" --> appIcon "<fn=4>\xe60c</fn>"
  --     , className =? "Org.gnome.Nautilus" --> appIcon "<fn=1>\xf07b</fn>"
  --     , className =? "Spotify" --> appIcon "<fn=3>\xf1bc</fn>"
  --     , className =? "mpv" --> appIcon "<fn=1>\xf03d</fn>"
  --     , className =? "VirtualBox Manager" --> appIcon "<fn=4>\xea3e</fn>"
  --     , className =? "Lutris" --> appIcon "<fn=1>\xf11b</fn>"
  --     , className =? "Sxiv" --> appIcon "<fn=1>\xf03e</fn>"
  --     ]

------------------------------------------------------------------------
-- Now run xmonad with all the defaults we set up.

-- Run xmonad with the settings you specify. No need to modify this.
--


main :: IO ()
main = -- do
  -- let acMh :: ManageHook
  --     acMh = reader W.focusWindow >>= doF
  xmonad . withSB mySB . ewmh . docks $  def {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = myLayout,
        manageHook         = myManageHook,
        handleEventHook    = handleEventHook def <> Hacks.windowedFullscreenFixEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
        }

--main = xmonad -- . withSB mySB . ewmhFullscreen . ewmh $
--   . docks
--   . pagerHints 
-- --  . setEwmhActivateHook activateSwitchWs
--   . ewmh
-- --  . ewmhFullscreeen
  
--  =<< statusBar myBar myPP toggleStrutsKey defaults


-- A structure containing your configuration settings, overriding
-- fields in the default config. Any you don't override, will
-- use the defaults defined in xmonad/XMonad/Config.hs
--
-- No need to modify this.
--
-- defaults = def {
--       -- simple stuff
--         terminal           = myTerminal,
--         focusFollowsMouse  = myFocusFollowsMouse,
--         clickJustFocuses   = myClickJustFocuses,
--         borderWidth        = myBorderWidth,
--         modMask            = myModMask,
--         workspaces         = myWorkspaces,
--         normalBorderColor  = myNormalBorderColor,
--         focusedBorderColor = myFocusedBorderColor,

--       -- key bindings
--         keys               = myKeys,
--         mouseBindings      = myMouseBindings,

--       -- hooks, layouts
--         layoutHook         = spacingRaw True (Border 0 10 10 10) True (Border 10 10 10 10) True $ myLayout,--spacingWithEdge
--         manageHook         = myManageHook,
--         handleEventHook    = handleEventHook def <> Hacks.windowedFullscreenFixEventHook,
--         logHook            = myLogHook,
--         startupHook        = myStartupHook
--         }

-- | Finally, a copy of the default bindings in simple textual tabular format.
help :: String
help = unlines ["The default modifier key is 'alt'. Default keybindings:",
    "",
    "-- launching and killing programs",
    "mod-Shift-Enter  Launch xterminal",
    "mod-p            Launch dmenu",
    "mod-Shift-p      Launch gmrun",
    "mod-Shift-c      Close/kill the focused window",
    "mod-Space        Rotate through the available layout algorithms",
    "mod-Shift-Space  Reset the layouts on the current workSpace to default",
    "mod-n            Resize/refresh viewed windows to the correct size",
    "",
    "-- move focus up or down the window stack",
    "mod-Tab        Move focus to the next window",
    "mod-Shift-Tab  Move focus to the previous window",
    "mod-j          Move focus to the next window",
    "mod-k          Move focus to the previous window",
    "mod-m          Move focus to the master window",
    "",
    "-- modifying the window order",
    "mod-Return   Swap the focused window and the master window",
    "mod-Shift-j  Swap the focused window with the next window",
    "mod-Shift-k  Swap the focused window with the previous window",
    "",
    "-- resizing the master/slave ratio",
    "mod-h  Shrink the master area",
    "mod-l  Expand the master area",
    "",
    "-- floating layer support",
    "mod-t  Push window back into tiling; unfloat and re-tile it",
    "",
    "-- increase or decrease number of windows in the master area",
    "mod-comma  (mod-,)   Increment the number of windows in the master area",
    "mod-period (mod-.)   Deincrement the number of windows in the master area",
    "",
    "-- quit, or restart",
    "mod-Shift-q  Quit xmonad",
    "mod-q        Restart xmonad",
    "mod-[1..9]   Switch to workSpace N",
    "",
    "-- Workspaces & screens",
    "mod-Shift-[1..9]   Move client to workspace N",
    "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3",
    "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3",
    "",
    "-- Mouse bindings: default actions bound to mouse events",
    "mod-button1  Set the window to floating mode and move by dragging",
    "mod-button2  Raise the window to the top of the stack",
    "mod-button3  Set the window to floating mode and resize by dragging"]
