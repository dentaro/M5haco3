initstars()
creobj()

colangle = 0
sw = 1

camera = {
  x = 0,
  y = 0,
  z = 0,
  x2 = 0,
  y2 = 0,
  z2 = -1,
  anglex = 1,
  angley = 0,
  anglez = 0,
  zoom = 0.1
}

light = {
  x = 1,
  y = 3,
  z = 10
}

-- setply()--3角ポリゴンの頂点データをセットする

function _init()

end

function _update()

  -- カメラの移動と回転
  -- if btn(1) >= 2 then
  --   camera.x = camera.x + 0.2  -- カメラが左に移動
  -- elseif btn(2) >= 2 then
  --   camera.x = camera.x - 0.2  -- カメラが右に移動
  -- end

  -- if btn(3) >= 2 then
  --   camera.y = camera.y - 0.2  -- カメラが上に移動
  -- elseif btn(4) >= 2 then
  --   camera.y = camera.y + 0.2  -- カメラが下に移動
  -- end
  
  -- if phbtn(2) == 1 then 
  --   camera.zoom = camera.zoom - 0.05  --
  -- end
  -- if phbtn(2) == 2 then 
  --   camera.zoom = camera.zoom + 0.05  -- ズームイン
  -- end

  -- if phbtn(2) == 3 then 
  --   light.x = light.x - 3  --
  -- end
  -- if phbtn(2) == 4 then 
  --   light.x = light.x + 3  -- 光の位置
  -- end

  -- -- if phbtn(0,1) == 7 then  
  -- --   camera.x = camera.x + 1  -- カメラが左に移動
  -- --   -- camera.anglex  = camera.anglex + 2
  -- -- end

  -- -- if phbtn(0,1) == 3 then 
  -- --   camera.x = camera.x - 1  -- カメラが右に移動
  -- --   -- camera.anglex  = camera.anglex - 2
  -- -- end
  

  -- -- if phbtn(0,1) == 5 then   
  -- --   camera.y = camera.y + 1  -- カメラが上に移動
  -- --   -- camera.angley  = camera.angley + 2
  -- -- end

  -- -- if phbtn(0,1) == 1 then 
  -- --   camera.y = camera.y - 1  -- カメラが下に移動
  -- --   -- camera.angley  = camera.angley - 2
  -- -- end

  

  -- if btn(6) >= 2 then
  --   camera.zoom = camera.zoom - 0.05  -- 左に回転
  -- elseif btn(8) >= 2 then
  --   camera.zoom = camera.zoom + 0.05  -- 右に回転
  -- end

  if phbtn(2) == 1 then 
    camera.zoom = camera.zoom - 0.05  -- 左に回転
  end
  if phbtn(2) == 2 then 
    camera.zoom = camera.zoom + 0.05  -- 右に回転
  end

  -- colangle = colangle + 1
  -- if colangle >= 360 then 
  --   colangle  = colangle - 360
  -- end

  -- -- obj1.angle = obj1.angle + 1
  -- -- camera.anglex  = camera.anglex + 1

  if phbtn(0,1) == 7 then   
    sw = 1
    camera.anglex  = camera.anglex + 2
  end

  if phbtn(0,1) == 3 then 
    sw = 1
    camera.anglex  = camera.anglex - 2
  end

  if phbtn(0,1) == 5 then   
    sw = 2
    camera.angley  = camera.angley + 2
  end

  if phbtn(0,1) == 1 then 
    sw = 2
    camera.angley  = camera.angley - 2
  end

  -- if camera.anglex >= 360 then 
  --   camera.anglex = camera.anglex - 360
  -- end

  -- if camera.anglex < 0 then 
  --   camera.anglex = camera.anglex + 360
  -- end

  -- if obj1.anglex > 360 then 
  --   obj1.anglex  = obj1.anglex - 360
  -- end
end 

function _draw()
  cls()
  -- trans(obj1.x,obj1.y,obj1.z,obj1.angle,obj1.size,2,colangle)
  -- -- cam(camera.x,camera.y,camera.z,camera.x2,camera.y2,camera.z2,camera.anglex,camera.zoom)
  -- cam(camera.x,camera.y,camera.z,camera.x2,camera.y2,camera.z2,camera.anglex,camera.angley,camera.anglez,camera.zoom)
  -- -- cam(camera.x,camera.y,camera.z,camera.anglex,camera.angley,camera.anglez,camera.zoom)
  
  -- lig(5, light.y, 5)

  -- camera.anglex = camera.anglex+1
  -- if camera.anglex > 360 then 
  --   camera.anglex  = camera.anglex - 360
  -- end

  rendr( camera.anglex, camera.angley, sw, camera.zoom)
end
-------------------------------------------------------
function setup()--init
  _init()
end
function loop()--update --draw
_update()
_draw()
end

-- --empty project
-- camera = creobj(0)
-- light = creobj(1)
-- obj1 = creobj(2)

-- -- function _update()

-- --   if btn(1) >= 2 then
-- --     -- camera.x = camera.x + 1  -- 左に移動
-- --   elseif btn(2) >= 2 then
-- --     -- camera.x = camera.x - 1  -- 右に移動
-- --   end
-- -- end 


-- function input()



--   if camera.angle > 360 then 
--     camera.angle = 0
--   end
--   -- カメラの移動と回転
--   if btn(1) >= 2 then
--     camera.x = camera.x + 1  -- 左に移動
--   elseif btn(2) >= 2 then
--     camera.x = camera.x - 1  -- 右に移動
--   end

--   if btn(3) >= 2 then
--     camera.y = camera.y + 1  -- 上に移動
--   elseif btn(4) >= 2 then
--     camera.y = camera.y - 1  -- 下に移動
--   end
--   if btn(6) >= 2 then
--     camera.zoom = camera.zoom - 0.05  -- 左に回転
--   elseif btn(8) >= 2 then
--     camera.zoom = camera.zoom + 0.05  -- 右に回転
--   end
--   colangle = colangle + 1
--   if colangle > 360 then 
--     colangle  = colangle - 360
--   end
--   obj1.angle = obj1.angle + 1
--   if obj1.angle > 360 then 
--     obj1.angle  = obj1.angle - 360
--   end




  


--   -- if btnp(1) == true then

--   -- end

--   -- if btnp(2) == true then

--   -- end

--   -- if btnp(3) == true then

--   -- end

--   -- if btnp(4) == true then

--   -- end

--   --phbtn(3)は0~4095の値をボリュームから取得
--   -- zoom = 10 + phbtn(2) * 5 / 4095;

--   -- if phbtn(2) == 1 then 
--   --   zoom = zoom + 0.1;
--   -- end
--   -- if phbtn(2) == 2 then 
--   --   zoom = zoom - 0.1;
--   -- end

--   -- tx = tp(0)
--   -- ty = tp(1)

--   -- if (touch()==2) then --タッチされたら
--   --   gpos = getgpos(tx, ty, zoom );
--   --   walkAscPos = gpos.asc
--   --   walkDecPos = gpos.dec
--   -- end

--   --アナログスティック
--   -- if phbtn(0,1) == 7 then 

--   -- end

--   -- if phbtn(0,1) == 6 then 

--   -- end

--   -- if phbtn(0,1) == 5 then 

--   -- end

--   -- if phbtn(0,1) == 4 then 

--   -- end

--   -- if phbtn(0,1) == 3 then 

--   -- end

--   -- if phbtn(0,1) == 2 then 

--   -- end

--   -- if phbtn(0,1) == 1 then 

--   -- end

--   -- if phbtn(0,1) == 0 then 

--   -- end
-- end

-- function _update()--ループします

--   input()

-- end



-- function _draw()
--   cls()
--   trans(obj1.x,obj1.y,obj1.z,obj1.angle,obj1.size,2,colangle)
--   cam(camera.x,camera.y,camera.z,camera.angle,camera.zoom)
--   rendr(poly_vertices)
-- end
-- -------------------------------------------------------
-- function setup()--init
--   _init()
-- end
-- function loop()--update --draw
-- _update()
-- _draw()
-- end