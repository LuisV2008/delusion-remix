
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 1300;
local yy = 700;
local xx2 = 1800;
local yy2 = 700;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

end

function onCreate()
	makeLuaSprite( 'fondo', 'electricity', -60, -40)
	scaleObject('fondo', 2.07, 2.07);
	setLuaSpriteScrollFactor('fondo', 1.0, 1.0)
	addLuaSprite('fondo', false)
	setProperty('fondo.visible', true)

	makeLuaSprite( 'fondo2', 'grayfg', 150, 1010)
	scaleObject('fondo2', 1.6, 1.6);
	setLuaSpriteScrollFactor('fondo2', 1.1, 1.1)
	addLuaSprite('fondo2', true)
	setProperty('fondo2.visible', true)

	makeLuaSprite( 'fondo3', 'graymultiply', -60, -40)
	scaleObject('fondo3', 10.03, 10.03);
	setLuaSpriteScrollFactor('fondo3', 1.0, 1.0)
	addLuaSprite('fondo3', true)
	setProperty('fondo3.visible', true)

	makeLuaSprite( 'fondo4', 'grayoverlay', -60, -40)
	scaleObject('fondo4', 10.03, 10.03);
	setLuaSpriteScrollFactor('fondo4', 1.0, 1.0)
	addLuaSprite('fondo4', true)
	setProperty('fondo4.visible', true)

		makeAnimatedLuaSprite('capsula', 'coso_de_luz_nose', 1960, 390)
luaSpriteAddAnimationByPrefix('capsula', 'capsula', 'coso_de_luz_nose popopapa', 24, true);
	scaleObject('capsula', 1.76, 1.76)
		addLuaSprite("capsula", false)

		makeAnimatedLuaSprite('negro', 'mi_bebito_fiufiu', 190, 280)
luaSpriteAddAnimationByPrefix('negro', 'negro', 'mi_bebito_fiufiu tick', 14, true);
	scaleObject('negro', 1.95, 1.95)
		addLuaSprite("negro", false)

  makeLuaSprite('roxo','roxo',-600,-200);
  addLuaSprite('roxo',false)
  setObjectCamera('roxo', 'hud')
  scaleObject('roxo', 35, 35);
  setProperty('roxo.alpha', '0.7')
end
function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.8)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

