local centerX = 64
local centerY = 64
local radius = 40

-- 分割数
local segments = 180

function _init()

end

function _draw()
  
end

function _update()
  cls(1)
  if tstat() > 0 then -- タッチされたら
    local mx = tp(0) -- マウス座標取得
    local my = tp(1) -- マウス座標取得
    local cx, cy = 64, 60 -- 画面中心座標
    line(cx, cy, mx, my, 7) -- 線を描画
  else
  end

  i=0
  for angle = 0, 360, 360 / segments do
  local x1 = 64 + radius * gcos(angle)
  local y1 = 60 + radius * gsin(angle)
  local x2 = 64 + radius * gcos(angle-360 / segments)
  local y2 = 60 + radius * gsin(angle-360 / segments)
  -- line(x1, y1, x2, y2, 7) -- 線を描画
  pset(x1, y1, 7)

  pset(i, y1, 7)
  i=i+1
  -- pset(flr(x1), flr(y1), 7)
  end
  
end
-------------------------------------------------------
function setup()--init
  _init()
end
function loop()--update --draw
_update()
_draw()
end

--tstatのタッチ状態は以下の通り
--eventState
-- NO_EVENT -1
-- UNTOUCH 0
-- DRAG 2
-- TAPPED 3
-- WTAPPED 4
-- FLICK 5 //フリックの中心、始まりのイベント
-- FLICKED 6 //フリック終わりのイベント
-- TOUCH 7
-- WAIT 8
-- MOVE 9
-- RELEASE 10


