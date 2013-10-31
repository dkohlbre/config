import XMonad
import qualified Data.Map as M
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.XMonad

myFocusedBorderColor = "#0050FF"

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
       [
	--take a screenshot of entire display 
	((modm , xK_Print ), spawn "scrot screen_%Y-%m-%d-%H-%M-%S.png -d 1")
	--take a screenshot of focused window 
	, ((modm .|. controlMask, xK_Print ), spawn "scrot window_%Y-%m-%d-%H-%M-%S.png -d 1-u")
	]
newKeys x  = myKeys x `M.union` keys defaultConfig x

main = do
  xmonad $ defaultConfig 
	{ modMask = mod4Mask
	, terminal = "urxvt"
	,focusedBorderColor = myFocusedBorderColor
	,keys = newKeys
}
