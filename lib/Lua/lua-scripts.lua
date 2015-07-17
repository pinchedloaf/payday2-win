RegisterScript("lua-scripts/win.lua", 0, "VK_F8")
if not GetBinding("VK_F8") then BindKey("VK_F8", "lua-scripts/win.lua") end
