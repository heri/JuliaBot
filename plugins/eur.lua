do
-- TODO: More currencies

-- See http://webrates.truefx.com/rates/connect.html
local function getEURCAD(cad)
  local url = 'http://webrates.truefx.com/rates/connect.html?c=EUR/CAD&f=csv&s=n'
  local res,code = http.request(url)
  local rates = res:split(", ")
  local symbol = rates[1]
  local timestamp = rates[2]
  local sell = rates[3]..rates[4]
  local buy = rates[5]..rates[6]
  local text = symbol..'\n'..'Buy: '..buy..'\n'..'Sell: '..sell
  if cad then
    local eur = tonumber(cad) / tonumber(buy)
    text = text.."\n "..cad.."CAD = "..eur.."EUR"
  end
  return text
end

local function run(msg, matches)
  if matches[1] == "!eur" then
    return getEURCAD(nil)
  end
  return getEURCAD(matches[1])
end

return {
    description = "Real-time EURCAD market price", 
    usage = "!eur [CAD]",
    patterns = {
      "^!eur$",
      "^!eur (%d+[%d%.]*)$",
    },
    run = run
}

end
