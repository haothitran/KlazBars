local addon, ns = ...
local C = ns.C

--------------------------------------------------------------------------------
-- // MODULES / HOT KEYS
--------------------------------------------------------------------------------

hooksecurefunc("ActionButton_OnEvent", function(self, event)
  if event == "PLAYER_ENTERING_WORLD" then
    ActionButton_UpdateHotkeys(self, self.buttonType)
  end
end)

hooksecurefunc("ActionButton_UpdateHotkeys", function(self)
  local hotkey = _G[self:GetName().."HotKey"]
  local text = hotkey:GetText()

  text = string.gsub(text, "(s%-)", "S")
  text = string.gsub(text, "(a%-)", "A")
  text = string.gsub(text, "(c%-)", "C")
  text = string.gsub(text, "(Mouse Button )", "M")
  text = string.gsub(text, KEY_BUTTON3, "M3")
  text = string.gsub(text, KEY_PAGEUP, "PU")
  text = string.gsub(text, KEY_PAGEDOWN, "PD")
  text = string.gsub(text, KEY_SPACE, "SpB")
  text = string.gsub(text, KEY_INSERT, "Ins")
  text = string.gsub(text, KEY_HOME, "Hm")
  text = string.gsub(text, KEY_DELETE, "Del")
  text = string.gsub(text, KEY_NUMPADDECIMAL, "Nu.")
  text = string.gsub(text, KEY_NUMPADDIVIDE, "Nu/")
  text = string.gsub(text, KEY_NUMPADMINUS, "Nu-")
  text = string.gsub(text, KEY_NUMPADMULTIPLY, "Nu*")
  text = string.gsub(text, KEY_NUMPADPLUS, "Nu+")
  text = string.gsub(text, KEY_NUMLOCK, "NuL")
  text = string.gsub(text, KEY_MOUSEWHEELDOWN, "MWD")
  text = string.gsub(text, KEY_MOUSEWHEELUP, "MWU")

  if hotkey:GetText() == _G["RANGE_INDICATOR"] then
    hotkey:SetText("")
  else
    hotkey:SetText(text)
  end
end)

--------------------------------------------------------------------------------
-- // HIDE
--------------------------------------------------------------------------------

if C.HotKeys ~= true then
  for i = 1, 12 do
    _G["ActionButton"..i.."HotKey"]:SetAlpha(0)               -- main bar
    _G["MultiBarBottomRightButton"..i.."HotKey"]:SetAlpha(0)  -- bottom right bar
    _G["MultiBarBottomLeftButton"..i.."HotKey"]:SetAlpha(0)   -- bottom left bar
    _G["MultiBarRightButton"..i.."HotKey"]:SetAlpha(0)        -- right bar
    _G["MultiBarLeftButton"..i.."HotKey"]:SetAlpha(0)         -- left bar
  end
end
