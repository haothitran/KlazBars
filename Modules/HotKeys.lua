--------------------------------------------------------------------------------
-- // MODULES / HOT KEYS
--------------------------------------------------------------------------------

for i = 1, 12 do
  _G['ActionButton'..i..'HotKey']:SetAlpha(0.4)               -- main bar
  _G['MultiBarBottomRightButton'..i..'HotKey']:SetAlpha(0.4)  -- bottom right bar
  _G['MultiBarBottomLeftButton'..i..'HotKey']:SetAlpha(0.4)   -- bottom left bar
  _G['MultiBarRightButton'..i..'HotKey']:SetAlpha(0.4)        -- right bar
  _G['MultiBarLeftButton'..i..'HotKey']:SetAlpha(0.4)         -- left bar
end
