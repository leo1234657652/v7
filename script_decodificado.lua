
--[[
    This script has been licensed using Luarmor
      Luarmor v3.8b, Lua whitelisting system
            https://luarmor.net/

          _       _       _ 
       __| |_   _| |__   / |
      / _` | | | | '_ \  | |
     | (_| | |_| | | | | | |
      \__,_|\__,_|_| |_| |_|
                            


]]

local a="This file is licensed with Luarmor. You must use the actual loadstring to execute this script. Do not run this file directly. Always use the loadstring."
local b="6fca4ffe28685cf34528c77636696cdf"

if lrm_load_script then 
  lrm_load_script(b)
  while wait(1) do 
  end 
end

local c="local c = "https://raw.githubusercontent.com/leo1234657652/v7/main/v7.txt"
is_from_loader={Mode="fastload"}
local d=0.03

l_fastload_enabled=function(e)
  if e=="flush" then 
    wait(d)
    d=d+2
    local f,g
    local h,i=pcall(function()
      g=game:HttpGet(c)
      pcall(writefile,b.."-cache.lua","-- "..a.."

 if not is_from_loader then warn('Use the loadstring, do not run this directly') return end;
 "..g)
      wait(0.1)
      f=loadstring(g)
    end)
    if not h or not f then 
      pcall(writefile,"lrm-err-loader-log-httpresp.txt",tostring(g))
      warn("Error while executing loader. Err:"..tostring(i).." See lrm-err-loader-log-httpresp.txt in your workspace.")
      return 
    end
    f(is_from_loader)
  end
  if e=="rl" then 
    pcall(writefile,b.."-cache.lua","recache required")
    wait(0.2)
    pcall(delfile,b.."-cache.lua")
  end 
end

local j
local k,l=pcall(function()
  j=readfile(b.."-cache.lua")
  if (not j) or (#j < 5) then 
    j=nil
    return 
  end
  j=loadstring(j)
end)

if not k or not j then 
  l_fastload_enabled("flush")
  return 
end

j(is_from_loader)
