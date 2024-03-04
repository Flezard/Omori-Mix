luaDebugMode = true
local prevDir = 'idle'
local dir = 'idle'
local offset = 40
function onUpdatePost()
  if getProperty('isCameraOnForcedPos') then return end
  local c = mustHitSection and (gfSection and 'gf' or 'boyfriend') or 'dad'
  dir = getProperty(c..'.animation.curAnim.name')

  local x = getProperty(c..'.x') + (getProperty(c..'.width') / 2)
  x = x - getProperty(c..'.cameraPosition[0]')
  if c == 'dad' then x = x + 150 elseif c == 'boyfriend' then x = x -100 end 

  local y = getProperty(c..'.y') + (getProperty(c..'.height') / 2)
  y = y + getProperty(c..'.cameraPosition[1]')
  if c == 'dad' or c == 'boyfriend' then y = y - 100 end 

  if c == 'dad' then c = 'opponent' end if c == 'gf' then c = 'girlfriend' end
  x = x - getProperty(c..'CameraOffset[0]')
  y = y + getProperty(c..'CameraOffset[1]')

  local side = 0
  if dir == 'singLEFT' then side = -1 elseif dir == 'singRIGHT' then side = 1 end
  local vert = 0
  if dir == 'singUP' then vert = -1 elseif dir == 'singDOWN' then vert = 1 end

  setProperty('camFollow.x', x + (offset*side))
  setProperty('camFollow.y', y + (offset*vert))
  prevDir = dir
end