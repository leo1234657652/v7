--[[
    
]]

local a = "Este archivo está en un entorno de prueba. No es necesario usar loadstring."
local b = "6fca4ffe28685cf34528c77636696cdf"

local c = "https://raw.githubusercontent.com/leo1234657652/v7/main/v7.txt"
local d = 0.03

local function clear_cache()
  local cache_file = b .. "-cache.lua"
  pcall(function() delfile(cache_file) end)
  print("Cache cleared: " .. cache_file)
end

local function load_script()
  local g
  local success, err = pcall(function()
    g = game:HttpGet(c)
    pcall(writefile, b .. "-cache.lua", "-- " .. a .. "\n\n" .. g)
    wait(0.1)
    local f = loadstring(g)
    if f then
      f() -- Ejecutar el script cargado
    else
      error("No se pudo cargar el script")
    end
  end)
  if not success then
    pcall(writefile, "error-log.txt", tostring(err))
    warn("Error al ejecutar el script. Ver error-log.txt para detalles.")
    clear_cache() -- Limpiar caché en caso de error
  end
end

load_script()

