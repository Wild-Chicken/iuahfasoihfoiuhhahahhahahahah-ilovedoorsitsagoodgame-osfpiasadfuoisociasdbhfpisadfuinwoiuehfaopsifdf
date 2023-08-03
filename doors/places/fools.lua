local a=game:GetService"Lighting"
local b=game:GetService"Players"
local c=game:GetService"ReplicatedStorage"
local d=game:GetService"RunService"
local e=game:GetService"SoundService"
local f=game:GetService"Workspace"
local g=game:GetService"VirtualInputManager"







local h="Doors"
local i="Hotel v5.4"
local j="Wild-Chicken/doors"
local k="hotel"

local l={[6839171747]=5941}


local m={["Knobs"]=true,["ChestBox"]=true,["RolltopContainer"]=true}

local n={
["Candle"]=true,
["Lighter"]=true,
["Flashlight"]=true,

["Vitamins"]=true,
["Lockpick"]=true,
["Crucifix"]=true,
["CrucifixWall"]=true,
["SkeletonKey"]=true,

["PickupItem"]=true,
}
local o={
["Candle"]="Candle",
["Lighter"]="Lighter",
["Flashlight"]="Flashlight",

["Vitamins"]="Vitamins",
["Lockpick"]="Lockpick",
["Crucifix"]="Crucifix",
["CrucifixWall"]="Crucifix",
["SkeletonKey"]="Skeleton Key",

["PickupItem"]="Library Paper",
}

local p={
["Battery"]=true,
["Bandage"]=true,
}
local q={
["Battery"]="Battery",
["Bandage"]="Bandage",
}







do
local r=game.PlaceId
local s=game.PlaceVersion
local t=l[r]
if not t then
warn"Script does not support this place instance."
warn"The PlaceID and version has been set to your clipboard. Please report this to the developer."
return setclipboard("["..tostring(r).."] = "..tostring(s)..",")
end
end
do
local r=k..i
if getgenv()[r]then
return
end
getgenv()[r]=true
end







local r="https://raw.githubusercontent.com/Wild-Chicken/oiehargiuhkidzfghosibdgoiuhsdghfoisdfgkbueqogr-ibashedmyheadonthekeyboard-ffnduowoiuhfdaoisdfaosfhae/main/"

local s=loadstring(game:HttpGet(r.."Library.lua"))()
local t=loadstring(game:HttpGet(r.."addons/SaveManager.lua"))()
local u=loadstring(game:HttpGet(r.."addons/ThemeManager.lua"))()





























local v
do
local w,x=type,typeof
v=setmetatable({},{
__tostring=function()
return"Bin"
end,
})
v.__index=v
function v.new(...)
local y=setmetatable({},v)
return y:constructor(...)or y
end
function v.constructor(y)end
function v.add(y,z,A)
local B={
item=z,
method=A,
}
if y.head==nil then
y.head=B
end
if y.tail then
y.tail.next=B
end
y.tail=B
return z
end
function v.destroy(y)
while y.head do
local z=y.head.item
local A=y.head.method
if A then
z[A](z)
elseif w(z)=="function"then
z()
elseif x(z)=="RBXScriptConnection"then
z:Disconnect()
elseif w(z)=="thread"then
task.cancel(z)
elseif z.destroy~=nil then
z:destroy()
elseif z.Destroy~=nil then
z:Destroy()
end
y.head=y.head.next
end
end
function v.isEmpty(y)
return y.head==nil
end
end



local w
do
w={}
w.__index=w
function w.__tostring(x)
return"BaseComponent - "..x.instance:GetFullName()
end


local x,y,z=setmetatable,assert,task.defer


function w.new(A,...)
local B=x({},w)
B=B:constructor(A,...)or B
B:run()
return B
end


function w.constructor(A,B,...)
A.instance=B
A.running=false
A.destructed=false
A._maid=v.new()
A._maid:add(B.Destroying:Connect(function()
if not A.destructed then
A:destroy()
end
end))
end


function w.onStart(A)end


function w.run(A)
y(not A.running,"["..A:__tostring().."] is already running")
z(function()
A.running=true
if not A.destructed then
A:onStart()
end
end)
end

function w.destroy(A)
y(not A.destructed,"["..A:__tostring().."] is already destroyed")
A.running=false
A.destructed=true
A._maid:destroy()
end
end




































































































local x=b.LocalPlayer
local y=x:WaitForChild"PlayerGui"
local z=f.CurrentCamera

local A=c:WaitForChild"GameData"




local B={}






do
local C=c:WaitForChild"EntityInfo"
local D={
PadlockHint=C:WaitForChild"PadlockHint",
EngageMinigame=C:WaitForChild"EngageMinigame",
ClutchHeartbeat=C:WaitForChild"ClutchHeartbeat",
Screech=C:WaitForChild"Screech",
SpiderJumpscare=C:WaitForChild"SpiderJumpscare",
}
for E,F in pairs(D)do
B[E]=F
end
end

local C=Instance.new"Sound"

local D={}
local E={}
local F={}

local G=v.new()
local H=v.new()
local I=false


local J
local K
local L
local M
local N
local O
local P
local Q
local R
local S
local T
local U
local V
local W

local X={}
local Y={}
local Z={}







local _={}local aa=function(
aa, ab)
local ac=0.12

local ad=v.new()
local ae=Drawing.new"Text"
local af=Drawing.new"Square"
local ag=Drawing.new"Square"
ad:add(ae,"Remove")
ad:add(af,"Remove")
ad:add(ag,"Remove")

ae.Text=aa or""
ae.Color=Color3.fromRGB(255,255,255)
ae.ZIndex=3

af.Color=Color3.fromRGB(25,25,25)
af.Filled=true
af.Thickness=0
af.Size=ae.TextBounds+Vector2.new(10,8)
af.ZIndex=2

ag.Color=Color3.fromRGB(0,100,255)
ag.Filled=true
ag.Thickness=0
ag.Size=Vector2.new(2,24)
ag.ZIndex=1

local ah=0
for ai in pairs(_)do
ah=math.max(ah,ai+1)
end
_[ah]=ad

local aj=0
local ak,al,am=pairs(_)
ad:add(d.RenderStepped:Connect(function(an)
aj+=an

local ao,ap=ak(al,am)
local aq=ao or 0
while ao~=nil do
aq=math.min(aq,ao)
ao,ap=ak(al,ao)
end

local ar=ah-aq
local as=5
if aj<=ac then
as=-(af.Size.X+2)+(aj/ac)*(af.Size.X+7)
elseif aj>=ab-ac then
as=5-(aj-(ab-ac))/ac*(af.Size.X+7)
end

local at=Vector2.new(as,40+(ar*25))
ae.Position=at+Vector2.new(7,4)
af.Position=at+Vector2.new(2,0)
ag.Position=at
end))
ad:add(d.RenderStepped:Once(function(an)
ae.Visible=true
af.Visible=true
ag.Visible=true
end))
task.delay(ab,function()
ad:destroy()
_[ah]=nil
end)end local ab=function(


ab, ac)
if ab and Toggles["alerts.enabled"].Value then
local ad={
message=ac.message or"",
audio=ac.audio or false,
duration=ac.duration or 5,
}

if Toggles["alerts.drawing"].Value then
aa(ad.message,ad.duration)
else
s:Notify(ad.message,ad.duration)
end
if ad.audio and Toggles["alerts.audio.enabled"].Value then
C.TimePosition=0.25
C:Play()
end
end end


local ac=function(ac)
local ad={}
for ae,af in ipairs(getconnections(B.Screech.OnClientEvent))do
local ag=af.Function
if ag then
local ah=getfenv(ag).script
if ah and ah.Name=="RemoteListener"then
table.insert(ad,af)
end
end
end

if ac then
for ag,ah in ipairs(ad)do
ah:Disable()
end
else
for ag,ah in ipairs(ad)do
ah:Enable()
end
end
end

local ad=function(ad)
local ae={}
for af,ag in ipairs(getconnections(B.SpiderJumpscare.OnClientEvent))do
local ah=ag.Function
if ah then
local ai=getfenv(ah).script
if ai and ai.Name=="RemoteListener"then
table.insert(ae,ag)
end
end
end

if ad then
for ah,ai in ipairs(ae)do
ai:Disable()
end
else
for ah,ai in ipairs(ae)do
ai:Enable()
end
end
end









do
local ae=w
J=setmetatable({},{__index=ae})
J.__index=J

function J.__tostring(af)
return"CharacterComponent - "..af.instance:GetFullName()
end
J.attached={}


function J.new(af,...)
local ag=setmetatable({},J)
ag=ag:constructor(af,...)or ag
ag:run()
return ag
end


function J.constructor(af,ag)
ae.constructor(af,ag)
af.client=M.attached[b:GetPlayerFromCharacter(ag)]
af.root=ag:WaitForChild("HumanoidRootPart",5)
af.humanoid=ag:WaitForChild("Humanoid",5)

assert(af.client~=nil,"["..af:__tostring().."] is not a client's character")
assert(af.root~=nil,"["..af:__tostring().."] is missing a HumanoidRootPart")
assert(af.humanoid~=nil,"["..af:__tostring().."] is missing a Humanoid")

af._maid:add(ag.AncestryChanged:Connect(function(ah,ai)
if ai==nil then
af:destroy()
end
end))
end


function J.onStart(af)
J.attached[af.instance]=af
ae.onStart(af)
end


function J.destroy(af)
J.attached[af.instance]=nil
ae.destroy(af)
end
end



do

local ae=Vector3.new(1,0,1)

local af=J
K=setmetatable({},{__index=af})
K.__index=K

function K.__tostring(ag)
return"AvatarComponent - "..ag.instance:GetFullName()
end
K.attached=nil


function K.new(ag,...)
local ah=setmetatable({},K)
ah=ah:constructor(ag,...)or ah
ah:run()
return ah
end


function K.constructor(ag,ah)
af.constructor(ag,ah)
ag.light=ag._maid:add(Instance.new"PointLight")
end


function K.onStart(ag)
K.attached=ag
af.onStart(ag)

local ah=ag.light
ah.Enabled=false
ah.Range=60
ah.Color=Color3.new(1,1,1)
ah.Shadows=false
ah.Parent=ag.root

while ag.running and not I do
ah.Enabled=Toggles["character.glow.enabled"].Value
ah.Brightness=Options["character.glow.brightness"].Value/50
task.wait(0.1)
end
end

function K.onPhysics(ag,ah,ai)
local aj=Options["character.sprint.speed"].Value
if
aj>0
and Toggles["character.sprint.enabled"].Value
and Options["character.sprint.keybind"]:GetState()
then
local ak=ag.humanoid.MoveDirection*ae
if ak.Magnitude>0 and not ag.root.Anchored then
ag.instance:TranslateBy(ak*aj*ai)
end
end
end


function K.destroy(ag)
K.attached=nil
af.destroy(ag)
end
end



do

local ae=Vector3.new(5,7,0)
local af=Vector3.new(0,-0.25,0)
local ag,ah,ai,aj=
CFrame.new(af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)
local ak=z.WorldToViewportPoint
local al=Vector2.new
local am=math.min

local an=J
L=setmetatable({},{__index=an})
L.__index=L

function L.__tostring(ao)
return"FriendComponent - "..ao.instance:GetFullName()
end
L.attached={}


function L.new(ao,...)
local ap=setmetatable({},L)
ap=ap:constructor(ao,...)or ap
ap:run()
return ap
end


function L.constructor(ao,ap)
an.constructor(ao,ap)
ao.quad=Drawing.new"Quad"
ao._maid:add(ao.quad,"Remove")
end


function L.onStart(ao)
L.attached[ao.instance]=ao
an.onStart(ao)

local ap=ao.quad
ap.Visible=false
ap.Thickness=1
ap.Transparency=0.75
end

function L.onRender(ao,ap)
local aq=ao.quad
if Toggles["esp.player.enabled"].Value then
local ar=ao.root.CFrame
local as=ak(z,(ar*ag).Position)
local at=ak(z,(ar*ah).Position)
local au=ak(z,(ar*aj).Position)
local av=ak(z,(ar*ai).Position)
if am(as.Z,at.Z,au.Z,av.Z)>0 then
aq.PointA=al(at.X,at.Y)
aq.PointB=al(as.X,as.Y)
aq.PointC=al(av.X,av.Y)
aq.PointD=al(au.X,au.Y)
aq.Color=Options["esp.player.color"].Value
aq.Visible=true
else
aq.Visible=false
end
else
aq.Visible=false
end
end


function L.destroy(ao)
L.attached[ao.instance]=nil
an.destroy(ao)
end
end



do
local ae=w
M=setmetatable({},{__index=ae})
M.__index=M

function M.__tostring(af)
return"ClientComponent - "..af.instance:GetFullName()
end
M.attached={}


function M.new(af,...)
local ag=setmetatable({},M)
ag=ag:constructor(af,...)or ag
ag:run()
return ag
end


function M.constructor(af,ag)
ae.constructor(af,ag)
end


function M.onStart(af)
M.attached[af.instance]=af
ae.onStart(af)
af._maid:add(af.instance.CharacterAdded:Connect(function(ag)
af:onCharacter(ag)
end))
af._maid:add(af.instance.Backpack.ChildAdded:Connect(function(ag)
if ag:IsA"Tool"then
af:onTool(ag)
end
end))
task.defer(function()
local ag=af.instance.Character
if ag then
af:onCharacter(ag)
end
end)
task.defer(function()
for ag,ah in ipairs(af.instance.Backpack:GetChildren())do
if ah:IsA"Tool"then
af:onTool(ah)
end
end
end)
end

function M.onCharacter(af,ag)
if af.instance==x then
af.character=K.new(ag)
else
af.character=L.new(ag)
end
end

function M.onTool(af,ag)
if ag.Name=="LibraryHintPaper"then
local ah=ag:WaitForChild("UI",1)
if ah then
local ai={}
for aj =1,5 do
local ak=ah:FindFirstChild(tostring(aj))
if ak then
local al=ak.ImageRectOffset.X/50
ai[aj]=al
end
end
E=ai
end
end
end


function M.destroy(af)
M.attached[af.instance]=nil
ae.destroy(af)
end


local af=function(af)
M.new(af)
end

b.PlayerAdded:Connect(af)
for ag,ah in ipairs(b:GetPlayers())do
task.defer(af,ah)
end
end



do

local ae=z.WorldToViewportPoint
local af,ag,ah=Vector2.new,Vector3.new,CFrame.Angles

local ai=w
N=setmetatable({},{__index=ai})
N.__index=N

function N.__tostring(aj)
return"ScreechComponent - "..aj.instance:GetFullName()
end
N.attached={}


function N.new(aj,...)
local ak=setmetatable({},N)
ak=ak:constructor(aj,...)or ak
ak:run()
return ak
end


function N.constructor(aj,ak)
ai.constructor(aj,ak)
aj.root=ak:WaitForChild"Root"
aj.line=Drawing.new"Line"
aj.outline=Drawing.new"Line"
aj._maid:add(aj.line,"Remove")
aj._maid:add(aj.outline,"Remove")
end


function N.onStart(aj)
N.attached[aj.instance]=aj
ai.onStart(aj)

local ak,al=aj.line,aj.outline
ak.Visible=false
ak.Color=Options["esp.screech.color"].Value
ak.ZIndex=1
ak.Thickness=1

al.Visible=false
al.Color=Color3.new()
al.ZIndex=0
al.Thickness=2
end

function N.onRender(aj,ak)
local al=Toggles["esp.screech.enabled"].Value
local am,an=aj.line,aj.outline
if al then
local ao=aj.root.Position
local ap=ae(z,ao)
if ap.Z<0 then
local aq=z.CFrame:PointToObjectSpace(ao)
local ar=math.atan2(aq.Y,aq.X)+math.pi
aq=ah(0,0,ar):VectorToWorldSpace(
(ah(0,math.rad(89.9),0):VectorToWorldSpace(ag(0,0,-1)))
)
ap=ae(z,z.CFrame:PointToWorldSpace(aq))
end

local aq=z.ViewportSize
am.From=af(aq.X/2,aq.Y*0.75)
am.To=af(ap.X,ap.Y)
an.From=am.From
an.To=am.To
end
am.Visible=al
an.Visible=al
end


function N.destroy(aj)
N.attached[aj.instance]=nil
ai.destroy(aj)
end
end



do

local ae=Vector3.new(4,6,0)
local af=Vector3.new(0,0,0)
local ag,ah,ai,aj=
CFrame.new(af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)
local ak=z.WorldToViewportPoint
local al=Vector2.new
local am=math.min

local an=w
O=setmetatable({},{__index=an})
O.__index=O

function O.__tostring(ao)
return"RushComponent - "..ao.instance:GetFullName()
end
O.attached={}


function O.new(ao,...)
local ap=setmetatable({},O)
ap=ap:constructor(ao,...)or ap
ap:run()
return ap
end


function O.constructor(ao,ap)
an.constructor(ao,ap)
ao.root=ap.PrimaryPart or ap:WaitForChild("RushNew",5)
assert(ao.root,"["..ao:__tostring().."] is missing a root part!")

ao.name=ao.instance.Name=="RushMoving"and"Rush"or"Ambush"
ao.quad=Drawing.new"Quad"
ao._maid:add(ao.quad,"Remove")
end


function O.onStart(ao)
O.attached[ao.instance]=ao
an.onStart(ao)

local ap=ao.quad
ap.Visible=false
ap.Thickness=1
ap.Color=ao.name=="Rush"and Options["esp.rush.rush-color"].Value
or Options["esp.rush.ambush-color"].Value

task.delay(0.5,function()
local aq=(K.attached.root.Position-ao.root.Position).Magnitude
if aq<=750 then
ab(Toggles["alerts.entity"].Value,{
message=ao.name=="Rush"and"Rush spawned, hide in a Wardrobe or get behind cover!"
or"Ambush spawned, hide in a Wardrobe or get behind cover! Ambush can return up to 4 times.",
audio=true,
duration=10,
})
else
ao:destroy()
end
end)
end

function O.onRender(ao,ap)
local aq=ao.quad
if Toggles["esp.rush.enabled"].Value then
local ar=ao.root.CFrame
local as=ak(z,(ar*ag).Position)
local at=ak(z,(ar*ah).Position)
local au=ak(z,(ar*aj).Position)
local av=ak(z,(ar*ai).Position)
if am(as.Z,at.Z,au.Z,av.Z)>0 then
aq.PointA=al(at.X,at.Y)
aq.PointB=al(as.X,as.Y)
aq.PointC=al(av.X,av.Y)
aq.PointD=al(au.X,au.Y)
aq.Visible=true
else
aq.Visible=false
end
else
aq.Visible=false
end
end


function O.destroy(ao)
O.attached[ao.instance]=nil
an.destroy(ao)
end
end



do

local ae=Vector3.new(6,13,0)
local af=Vector3.new(0,-1,0)
local ag,ah,ai,aj=
CFrame.new(af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)
local ak=z.WorldToViewportPoint
local al=Vector2.new
local am=math.min

local an=w
P=setmetatable({},{__index=an})
P.__index=P

function P.__tostring(ao)
return"FigureComponent - "..ao.instance:GetFullName()
end
P.attached={}


function P.new(ao,...)
local ap=setmetatable({},P)
ap=ap:constructor(ao,...)or ap
ap:run()
return ap
end


function P.constructor(ao,ap)
an.constructor(ao,ap)
ao.ragdoll=ap:WaitForChild("FigureRagdoll",2.5)
assert(ao.ragdoll~=nil,"["..ao:__tostring().."] is missing its ragdoll!")
ao.root=ao.ragdoll:WaitForChild("Root",2.5)
assert(ao.root~=nil,"["..ao:__tostring().."] is missing its root part!")

ao.quad=Drawing.new"Quad"
ao._maid:add(ao.quad,"Remove")
end


function P.onStart(ao)
P.attached[ao.instance]=ao
an.onStart(ao)

local ap=ao.quad
ap.Visible=false
ap.Thickness=2
end

function P.onRender(ao,ap)
local aq=ao.quad
if Toggles["esp.figure.enabled"].Value then
local ar=ao.root.CFrame
local as=ak(z,(ar*ag).Position)
local at=ak(z,(ar*ah).Position)
local au=ak(z,(ar*aj).Position)
local av=ak(z,(ar*ai).Position)
if am(as.Z,at.Z,au.Z,av.Z)>0 then
aq.PointA=al(at.X,at.Y)
aq.PointB=al(as.X,as.Y)
aq.PointC=al(av.X,av.Y)
aq.PointD=al(au.X,au.Y)
aq.Color=Options["esp.figure.color"].Value
aq.Visible=true
else
aq.Visible=false
end
else
aq.Visible=false
end
end


function P.destroy(ao)
P.attached[ao.instance]=nil
an.destroy(ao)
end
end



do

local ae=z.WorldToViewportPoint
local af=Vector2.new
local ag,ah,ai=af(-8,-6),af(8,-6),af(0,8)

local aj=w
Q=setmetatable({},{__index=aj})
Q.__index=Q

function Q.__tostring(ak)
return"SnareComponent - "..ak.instance:GetFullName()
end
Q.attached={}


function Q.new(ak,...)
local al=setmetatable({},Q)
al=al:constructor(ak,...)or al
al:run()
return al
end


function Q.constructor(ak,al)
aj.constructor(ak,al)
ak.root=al:WaitForChild("Base",2.5)
ak.triangle=Drawing.new"Triangle"
ak.outline=Drawing.new"Triangle"
ak._maid:add(ak.triangle,"Remove")
ak._maid:add(ak.outline,"Remove")
end


function Q.onStart(ak)
Q.attached[ak.instance]=ak
aj.onStart(ak)

local al,am=ak.triangle,ak.outline

al.Thickness=1
al.Filled=true
al.Visible=false

am.Color=Color3.new()
am.Thickness=1.5
am.Filled=false
am.Visible=false
am.ZIndex=2
end

function Q.onRender(ak,al)
local am,an=ak.triangle,ak.outline
if Toggles["esp.snare.enabled"].Value then
local ao=ae(z,ak.root.Position)
local ap=ao.Z>0
if ap then
local aq=af(ao.X,ao.Y)
am.PointA=aq+ag
am.PointB=aq+ah
am.PointC=aq+ai
an.PointA=am.PointA
an.PointB=am.PointB
an.PointC=am.PointC
am.Color=Options["esp.snare.color"].Value
end
am.Visible=ap
an.Visible=ap
else
am.Visible=false
an.Visible=false
end
end


function Q.destroy(ak)
Q.attached[ak.instance]=nil
aj.destroy(ak)
end
end



do

local ae=CFrame.new(0,0,1)
local af=z.WorldToViewportPoint
local ag=Vector2.new
local ah=math.min

local ai=w
R=setmetatable({},{__index=ai})
R.__index=R

function R.__tostring(aj)
return"DoorComponent - "..aj.instance:GetFullName()
end
R.attached={}


function R.new(aj,...)
local ak=setmetatable({},R)
ak=ak:constructor(aj,...)or ak
ak:run()
return ak
end


function R.constructor(aj,ak,al)
ai.constructor(aj,ak)
aj.id=al or 0

local am=ak.Size*0.5
local an=ak.CFrame*ae
aj.tl=(an*CFrame.new(am.X,am.Y,0)).Position
aj.tr=(an*CFrame.new(-am.X,am.Y,0)).Position
aj.bl=(an*CFrame.new(am.X,-am.Y,0)).Position
aj.br=(an*CFrame.new(-am.X,-am.Y,0)).Position

aj.quad=Drawing.new"Quad"
aj._maid:add(aj.quad,"Remove")
end


function R.onStart(aj)
R.attached[aj.instance]=aj
ai.onStart(aj)

local ak=aj.quad
ak.Visible=false
ak.Thickness=2
end

function R.onRender(aj,ak)
local al=aj.quad
if Toggles["esp.door.enabled"].Value then
local am=af(z,aj.tl)
local an=af(z,aj.tr)
local ao=af(z,aj.br)
local ap=af(z,aj.bl)
if ah(am.Z,an.Z,ao.Z,ap.Z)>0 then
al.PointA=ag(an.X,an.Y)
al.PointB=ag(am.X,am.Y)
al.PointC=ag(ap.X,ap.Y)
al.PointD=ag(ao.X,ao.Y)

local aq=aj.id-A.LatestRoom.Value
if aq==0 then
al.Color=Options["esp.door.target-color"].Value
else
al.Color=Options["esp.door.default-color"].Value
if aq<0 then
al.Transparency=0.5
else
al.Transparency=1.0
end
end

al.Visible=true
else
al.Visible=false
end
else
al.Visible=false
end
end


function R.destroy(aj)
R.attached[aj.instance]=nil
ai.destroy(aj)
end
end



do

local ae=Vector3.new(6.4,9.5,0)
local af=Vector3.new(0,0,-0.5)
local ag,ah,ai,aj=
CFrame.new(af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),
CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)
local ak=z.WorldToViewportPoint
local al=Vector2.new
local am=math.min

local an=w
S=setmetatable({},{__index=an})
S.__index=S

function S.__tostring(ao)
return"WardrobeComponent - "..ao.instance:GetFullName()
end
S.attached={}


function S.new(ao,...)
local ap=setmetatable({},S)
ap=ap:constructor(ao,...)or ap
ap:run()
return ap
end


function S.constructor(ao,ap,aq)
an.constructor(ao,ap)
ao.id=aq
ao.root=ap:WaitForChild("Main",5)
ao.occupant=ap:WaitForChild("HiddenPlayer",5)

ao.quad=Drawing.new"Quad"
ao._maid:add(ao.quad,"Remove")
end


function S.onStart(ao)
S.attached[ao.instance]=ao
an.onStart(ao)

local ap=ao.quad
ap.Visible=false
ap.Thickness=2
end

function S.onRender(ao,ap)
local aq=ao.quad
if Toggles["esp.wardrobe.enabled"].Value then
local ar=ao.root.CFrame
local as=ak(z,(ar*ag).Position)
local at=ak(z,(ar*ah).Position)
local au=ak(z,(ar*aj).Position)
local av=ak(z,(ar*ai).Position)
if am(as.Z,at.Z,au.Z,av.Z)>0 then
aq.PointA=al(at.X,at.Y)
aq.PointB=al(as.X,as.Y)
aq.PointC=al(av.X,av.Y)
aq.PointD=al(au.X,au.Y)
aq.Color=Options["esp.wardrobe.color"].Value
if ao.occupant.Value then
aq.Transparency=0.10
elseif A.LatestRoom.Value-ao.id>1 then
aq.Transparency=0.25
else
aq.Transparency=0.60
end
aq.Visible=true
else
aq.Visible=false
end
else
aq.Visible=false
end
end


function S.destroy(ao)
S.attached[ao.instance]=nil
an.destroy(ao)
end
end



do

local ae=z.WorldToViewportPoint
local af=Vector2.new
local ag=af(0,3)

local ah=w
T=setmetatable({},{__index=ah})
T.__index=T

function T.__tostring(ai)
return"InteractableComponent - "..ai.instance:GetFullName()
end
T.attached={}


function T.new(ai,aj,...)
local ak=setmetatable({},T)
ak=ak:constructor(ai,aj,...)or ak
ak:run()
return ak
end


function T.constructor(ai,aj,ak)
ah.constructor(ai,aj)
ai.name=ak
ai.label=Drawing.new"Text"
ai.circle=Drawing.new"Circle"
ai.outline=Drawing.new"Circle"
ai._maid:add(ai.label,"Remove")
ai._maid:add(ai.circle,"Remove")
ai._maid:add(ai.outline,"Remove")
ai._maid:add(aj.AncestryChanged:Connect(function(al,am)
if am==nil then
ai:destroy()
end
end))
end


function T.onStart(ai)
T.attached[ai.instance]=ai
ah.onStart(ai)

local aj,ak,al=ai.label,ai.circle,ai.outline
aj.Text=ai.name
aj.Size=18
aj.Center=true
aj.Outline=true
aj.Visible=false

ak.Thickness=1
ak.NumSides=6
ak.Radius=5
ak.Filled=true
ak.Visible=false

al.Color=Color3.new()
al.Thickness=1.5
al.NumSides=6
al.Radius=5
al.Filled=false
al.Visible=false
al.ZIndex=2
end

function T.onRender(ai,aj)
local ak,al,am=ai.label,ai.circle,ai.outline
if ai:isVisualEnabled()then
local an=ae(z,ai.instance.Position)
local ao=an.Z>0
if ao then
local ap=af(an.X,an.Y)
ak.Position=ap+ag
al.Position=ap
am.Position=ap

local aq=ai:getColor()
ak.Color=aq
al.Color=aq
end
ak.Visible=ao
al.Visible=ao
am.Visible=ao
else
ak.Visible=false
al.Visible=false
am.Visible=false
end
end


function T.isVisualEnabled(ai)
return Toggles["esp.interactable.enabled"].Value
end

function T.getColor(ai)
return Options["esp.interactable.color"].Value
end

function T.destroy(ai)
T.attached[ai.instance]=nil
ah.destroy(ai)
end
end



do
local ae=T
U=setmetatable({},{__index=ae})
U.__index=U

function U.__tostring(af)
return"ObtainableComponent - "..af.instance:GetFullName()
end
U.attached={}


function U.new(af,ag,...)
local ah=setmetatable({},U)
ah=ah:constructor(af,ag,...)or ah
ah:run()
return ah
end


function U.constructor(af,ag,ah)
ae.constructor(af,ag,ah)
end


function U.onStart(af)
U.attached[af.instance]=af
ae.onStart(af)
local ag,ah,ai=af.label,af.circle,af.outline
ah.NumSides=5
ai.NumSides=5
end


function U.isVisualEnabled(af)
return Toggles["esp.obtainable.enabled"].Value
end

function U.getColor(af)
return Options["esp.obtainable.color"].Value
end

function U.destroy(af)
U.attached[af.instance]=nil
ae.destroy(af)
end
end



do
local ae=U
V=setmetatable({},{__index=ae})
V.__index=V

function V.__tostring(af)
return"GoldComponent - "..af.instance:GetFullName()
end


function V.new(af,...)
local ag=setmetatable({},V)
ag=ag:constructor(af,...)or ag
ag:run()
return ag
end


function V.constructor(af,ag)
ae.constructor(af,ag,"Gold")
af.denomination=0
end


function V.onStart(af)
ae.onStart(af)
af:onDenominationChanged()
af.instance:GetAttributeChangedSignal"GoldValue":Connect(function()
af:onDenominationChanged()
end)
end

function V.onRender(af,ag)
af.label.Text=Options["esp.gold.format"].Value:gsub("{amount}",tostring(af.denomination))
ae.onRender(af,ag)
end

function V.onDenominationChanged(af)
af.denomination=af.instance.Parent:GetAttribute"GoldValue"or 0
end


function V.isVisualEnabled(af)
return Toggles["esp.gold.enabled"].Value and af.denomination>=Options["esp.gold.minimum"].Value
end

function V.getColor(af)
return Options["esp.gold.color"].Value
end
end



do local ae=function()


return Toggles["interact.enabled"].Value and Options["interact.keybind"]:GetState()end


local af=w
W=setmetatable({},{__index=af})
W.__index=W

function W.__tostring(ag)
return"RoomComponent - "..ag.instance:GetFullName()
end
W.attached={}


function W.new(ag,...)
local ah=setmetatable({},W)
ah=ah:constructor(ag,...)or ah
ah:run()
return ah
end


function W.constructor(ag,ah)
af.constructor(ag,ah)
ag.id=tonumber(ah.Name)
ag.assets=ah:WaitForChild("Assets",5)
end


function W.onStart(ag)
W.attached[ag.instance]=ag
af.onStart(ag)


if ag.id==50 or ag.id==100 then
task.defer(ag.onFigure,ag)
end
local ah=ag.instance:WaitForChild("RoomExit",5)
if ah then
R.new(ah,ag.id)
end


ag._maid:add(ag.instance.DescendantAdded:Connect(function(ai)
ag:onDescendant(ai)
end))
for ai,aj in ipairs(ag.instance:GetDescendants())do
task.defer(ag.onDescendant,ag,aj)
if ai%500==0 then
task.wait()
end
end
end

function W.onDescendant(ag,ah)
local ai=ah.Parent
local aj=ai.Name
local ak=ah.Name
if ak=="Main"then

if p[aj]then
U.new(ah,q[aj])


elseif aj=="LeverForGate"then
T.new(ah,"Lever")


elseif aj=="ChestBox"then
T.new(ah,"Chest")


elseif aj=="ChestBoxLocked"then
T.new(ah,"Chest [Locked]")
end
elseif ak=="Handle"then

if n[aj]then
U.new(ah,o[aj])
end
elseif ak=="Base"then
if aj=="LiveHintBook"then
U.new(ah,"Book")
elseif aj=="LiveBreakerPolePickup"then
U.new(ah,"Fuse")
elseif aj=="Snare"then
Q.new(ai)
end
elseif ak=="Lock"then
if aj=="Door"then
T.new(ah,"Lock")
end
elseif aj=="KeyObtain"then
if ak=="Hitbox"then
U.new(ah,"Key")
end
elseif ak=="Wardrobe"then
S.new(ah,ag.id)
elseif ak=="Toolshed"then
S.new(ah,ag.id)
elseif ak=="Hitbox"then
if aj=="GoldPile"then
V.new(ah)
end
end


if ag.id~=52 and ah:IsA"ProximityPrompt"then
local al=v.new()
ag._maid:add(al)

local am
local an=ah
local ao=os.clock()

local ap=""
local aq=0.2
local ar=1
local as=an.MaxActivationDistance+5


if m[aj]then
ap="Containers"
am=aj=="Knobs"and ai or ai:WaitForChild("Main",5)
end


if aj=="GoldPile"then
ap="Gold"
am=ai:WaitForChild("Hitbox",5)
end
if aj=="KeyObtain"then
ap="Keys"
am=ai:WaitForChild("Hitbox",5)
end


if n[aj]then
ap=o[aj]
aq=0.5
ar=math.huge

am=ai:WaitForChild("Handle",5)
elseif p[aj]then
ap=q[aj]
aq=0.5
ar=math.huge

am=ai:WaitForChild("Main",5)
end


if aj=="LiveHintBook"then
ap="Books"
am=ai:WaitForChild("Base",5)
elseif aj=="LiveBreakerPolePickup"then
ap="Fuses"
am=ai:WaitForChild("Base",5)
end


if aj=="VentGrate"then
ap="Vents"
am=ai:WaitForChild("SquareGrate",5)
elseif aj=="Lock"and ak=="UnlockPrompt"then
ap="Locks"
aq=0.5
ar=math.huge

am=ai
elseif aj=="LeverForGate"then
ap="Levers"
am=ai:WaitForChild("Main",5)
end


if am then
local at=game.IsDescendantOf local au=function()


local au=an:GetAttribute"Interactions"
if not au or au<ar then
return true
end
return false end local av=function()


if ae()then
local av=Options["interact.filter"].Value
local aw=Options["interact.filter-type"].Value
if aw=="Whitelist"then
return av[ap]~=nil
elseif aw=="Blacklist"then
return av[ap]==nil
elseif aw=="Disabled"then
return true
end
end
return false end


al:add(d.Heartbeat:Connect(function()
if not au()then
return al:destroy()
end
if not av()then
return
end

local aw=os.clock()
if aw-ao>=aq then
local ax=K.attached
local ay=(am.Position-ax.root.Position).Magnitude
if ay<=as then
fireproximityprompt(an)
ao=aw
end
end
end))
al:add(an.AncestryChanged:Connect(function(aw,ax)
if ax==nil then
al:destroy()
end
end))
end

return
end
end

function W.onFigure(ag)
local ah=ag.instance:WaitForChild("FigureSetup",5)
P.new(ah)
end


function W.destroy(ag)
W.attached[ag.instance]=nil
af.destroy(ag)
end


local ag=function(ag)
W.new(ag)
end
G:add(f.CurrentRooms.ChildAdded:Connect(ag))
for ah,ai in ipairs(f.CurrentRooms:GetChildren())do
task.defer(ag,ai)
end
end







s:SetWatermark"Linoria Community (TerminalVibes)"
s:Notify"Loading UI..."

do
local ae=s:CreateWindow(h.." ("..i..")")

do
local af=ae:AddTab"Gameplay"

do
local ag=af:AddLeftGroupbox"Character Mods"
ag:AddToggle(
"character.sprint.enabled",
{Text="Sprint Enabled",Default=false,Tooltip="Enables Sprinting by pressing the Keybind"}
):AddKeyPicker("character.sprint.keybind",{Text="Sprint",Default="LeftShift"})
ag:AddSlider(
"character.sprint.speed",
{Text="Sprint Boost (in seconds)",Min=0,Max=7.5,Default=0,Rounding=1,Suffix=" studs"}
)
ag:AddToggle(
"character.glow.enabled",
{Text="Body Glow",Default=false,Tooltip="Adds a subtle glow for better vision"}
)
ag:AddSlider(
"character.glow.brightness",
{Text="Glow Brightness",Min=0,Max=100,Default=0,Rounding=0,Suffix=""}
)
end

do
local ag=af:AddLeftGroupbox"Gameplay Mods"
ag:AddToggle("gameplay.heartbeat.enabled",{
Text="Automated Heartbeat",
Default=false,
Tooltip="Automatically does Heartbeat inputs for you. (Room 50 & 100)",
})
ag:AddToggle("gameplay.parser.enabled",{
Text="Library Code",
Default=false,
Tooltip="Automatically parses the Library padlock code as you obtain clues. (Paper & Hints required)",
}):AddKeyPicker("gameplay.parser.keybind",{
Default="P",
NoUI=true,
Mode="Toggle",
})
ag:AddToggle("gameplay.breaker.enabled",{
Text="Breaker Code",
Default=false,
Tooltip="Notifies you of Electrical Breaker code when it generates.",
}):AddKeyPicker("gameplay.breaker.keybind",{
Default="B",
NoUI=true,
Mode="Toggle",
})
end

do
local ag=af:AddRightTabbox"Alerts"

local ah=ag:AddTab"Alerts"
ah:AddToggle(
"alerts.enabled",
{Text="Alerts Enabled",Default=true,Tooltip="Master toggle for all script alerts."}
)
ah:AddToggle("alerts.drawing",{
Text="Use Drawing API",
Default=true,
Tooltip="Enables the drawing API for script alerts.",
})
ah:AddToggle("alerts.audio.enabled",{
Text="Enable Sound",
Default=true,
Tooltip="Plays a sound when an important alert is triggered.",
})
ah:AddSlider(
"alerts.audio.volume",
{Text="Alert Volume",Min=1,Max=10,Default=6,Rounding=0,Suffix=""}
)
ah:AddButton{
Text="Test Alert",
Func=function()
ab(true,{
message="This is a test alert!",
duration=4,
audio=true,
})
end,
}

local ai=ag:AddTab"Advanced"
ai:AddToggle(
"alerts.debug",
{Text="Debug Alerts",Default=false,Tooltip="Enabled alerts related to script status."}
)
ai:AddToggle(
"alerts.entity",
{Text="Entity Alerts",Default=true,Tooltip="Enabled alerts about entities spawning."}
)
end
end

do
local af=ae:AddTab"Blatant"

do
local ag=af:AddLeftGroupbox"Modifications"
ag:AddButton{
Text="Remove Skeleton Door Chains",
Func=function()
local ah=f.CurrentRooms:FindFirstChild("RoomsDoor_Entrance",true)
if ah then
local ai=ah:WaitForChild("SkullLock",2.5):WaitForChild"SkullPrompt"
local aj={ah:WaitForChild"Chain1",ah:WaitForChild"Chain2"}
for ak,al in ipairs(aj)do
al:Destroy()
end
ai.Enabled=true
end
end,
}
end

do
local ag=af:AddRightGroupbox"Auto Interact"
ag:AddToggle("interact.enabled",{
Text="Enabled",
Default=false,
Tooltip="Automatically loots items for you.",
}):AddKeyPicker("interact.keybind",{
Text="Auto-Interact",
Default="F",
})
ag:AddDropdown("interact.filter",{
Text="Interact Filter",
Tooltip="Selected items will be filtered by the auto-interact.",

Values={
"Gold",
"Containers",

"Candle",
"Lighter",
"Flashlight",
"Vitamins",
"Lockpick",
"Crucifix",
"Skeleton Key",
"Battery",
"Bandage",

"Keys",
"Books",
"Library Paper",
"Fuses",

"Vents",
"Locks",
"Levers",
},
Default={},
Multi=true,
})
ag:AddDropdown("interact.filter-type",{
Text="Filter Behavior",
Values={"Disabled","Whitelist","Blacklist"},
Default=1,
})
end

do
local ag=af:AddRightGroupbox"Entity Hooks"
ag:AddToggle("blatant.timothy.remove",{
Text="Remove Timothy",
Default=false,
Tooltip="Timothy will no longer jumpscare you (You will still take damage).",
})
ag:AddToggle("blatant.screech.remove",{
Text="Remove Screech",
Default=false,
Tooltip="Screech will no longer spawn for you.",
})
ag:AddToggle("blatant.bananas.disable",{
Text="Disable Bananas",
Default=false,
Tooltip="Bananas will no longer trip you.",
})
end
end

do
local af=ae:AddTab"Visuals"

do
local ag=af:AddLeftTabbox"ESP"

local ah=ag:AddTab"Entity ESP"
do
ah:AddToggle(
"esp.player.enabled",
{Text="Player ESP",Default=true,Tooltip="ESP for other players"}
):AddColorPicker("esp.player.color",{
Title="Player ESP Color",
Default=Color3.new(1,1,1),
})
ah:AddToggle(
"esp.screech.enabled",
{Text="Screech ESP",Default=true,Tooltip="Tracer ESP for Screech entities"}
):AddColorPicker("esp.screech.color",{
Title="Screech ESP Color",
Default=Color3.new(1,0,0),
})
ah:AddToggle(
"esp.rush.enabled",
{Text="Rush/Ambush ESP",Default=true,Tooltip="ESP for both Rush and Ambush entities"}
)
:AddColorPicker("esp.rush.rush-color",{
Title="Rush ESP Color",
Default=Color3.new(1,0,0),
})
:AddColorPicker("esp.rush.ambush-color",{
Title="Ambush ESP Color",
Default=Color3.new(0,1,0),
})
ah:AddToggle(
"esp.figure.enabled",
{Text="Figure ESP",Default=true,Tooltip="ESP for the Figure entity"}
):AddColorPicker("esp.figure.color",{
Title="Figure ESP Color",
Default=Color3.new(0.75,0.25,0.25),
})
ah
:AddToggle(
"esp.snare.enabled",
{Text="Snare ESP",Default=true,Tooltip="ESP for snare traps"}
)
:AddColorPicker("esp.snare.color",{
Title="Snare ESP Color",
Default=Color3.new(1,0,0),
})
end

local ai=ag:AddTab"Object ESP"
do
ai:AddToggle("esp.door.enabled",{Text="Door ESP",Default=false,Tooltip="ESP for doors"})
:AddColorPicker("esp.door.default-color",{
Title="Other Doors ESP Color",
Default=Color3.new(0,0.3,0.75),
})
:AddColorPicker("esp.door.target-color",{
Title="Current Door ESP Color",
Default=Color3.new(0,1,0),
})
ai:AddToggle(
"esp.wardrobe.enabled",
{Text="Wardrobe ESP",Default=false,Tooltip="ESP for Wardrobe"}
):AddColorPicker("esp.wardrobe.color",{
Title="Wardrobe ESP Color",
Default=Color3.new(0,1,0.9),
})
ai:AddToggle(
"esp.interactable.enabled",
{Text="Interactable ESP",Default=true,Tooltip="ESP for interactable items"}
):AddColorPicker("esp.interactable.color",{
Title="Interactable ESP Color",
Default=Color3.new(1,1,1),
})
ai:AddToggle(
"esp.obtainable.enabled",
{Text="Obtainable ESP",Default=true,Tooltip="ESP for items that can be picked up"}
):AddColorPicker("esp.obtainable.color",{
Title="Obtainable ESP Color",
Default=Color3.new(1,1,0),
})
end
end

do
local ag=af:AddLeftGroupbox"Gold ESP"
ag:AddToggle(
"esp.gold.enabled",
{Text="Gold ESP",Default=true,Tooltip="ESP for items that can be picked up"}
):AddColorPicker("esp.gold.color",{
Title="Gold ESP Color",
Default=Color3.new(1,1,0),
})
ag:AddInput("esp.gold.format",{
Text="Custom Label",
Default="Gold [{amount}]",
Placeholder="Label Text",
Tooltip="Custom text to display for gold. {amount} will be replaced with the amount of gold.",
})
ag:AddSlider("esp.gold.minimum",{
Text="Minimum Gold",
Default=10,
Min=0,
Max=100,
Rounding=0,
Tooltip="Minimum amount of gold to display",
})
end

do
local ag=af:AddRightGroupbox"Lighting"
ag:AddButton{
Text="Full Bright",
Func=function()
a.Ambient=Color3.fromRGB(200,200,200)
a.Brightness=1
a.ClockTime=12
G:add(a:GetPropertyChangedSignal"Ambient":Connect(function()
local ah=Color3.fromRGB(200,200,200)
if a.Ambient~=ah then
a.Ambient=ah
end
end))
G:add(a:GetPropertyChangedSignal"Brightness":Connect(function()
if a.Brightness~=1 then
a.Brightness=1
end
end))
G:add(a:GetPropertyChangedSignal"ClockTime":Connect(function()
if a.ClockTime~=12 then
a.ClockTime=12
end
end))
end,
}
end
end

do
local af=ae:AddTab"Credits"

local ag=af:AddLeftGroupbox"Credits"
ag:AddLabel"TerminalVibes - Creator"
ag:AddLabel"Inori @v3rm - UI Library"
ag:AddDivider()
ag:AddLabel"Contributors:"
ag:AddLabel"> reversing#2937 @discord"
ag:AddLabel"> yuuiz#1336 @discord"
ag:AddLabel"> Ferris#8276 @discord"
ag:AddLabel"> Lythicals#0001 @discord"
ag:AddLabel"> brickmane @v3rm"
ag:AddLabel"> BlockOfGaming"

local ah=af:AddRightGroupbox"Socials"
ah:AddButton{
Text="Discord Server",
Func=function()
setclipboard"https://discord.gg/8PATx7UKXZ"
end,
}
end

do
local af=ae:AddTab"Settings"

u:SetLibrary(s)
t:SetLibrary(s)

u:SetFolder(j)
t:SetFolder(j.."/"..k)

t:IgnoreThemeSettings()
t:SetIgnoreIndexes{"MenuKeybind"}

t:BuildConfigSection(af)
u:ApplyToTab(af)

local ag=af:AddLeftGroupbox"Menu"
ag:AddButton("Unload",function()
s:Unload()
end)
ag:AddLabel"Menu bind":AddKeyPicker("MenuKeybind",{Default="End",NoUI=true,Text="Menu keybind"})

ag:AddToggle("Keybinds",{Text="Show Keybinds Menu",Default=true}):OnChanged(function()
s.KeybindFrame.Visible=Toggles.Keybinds.Value
end)
ag:AddToggle("Watermark",{Text="Show Watermark",Default=true}):OnChanged(function()
s:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
end
end

s:Notify"UI Built! [Right Ctrl or Right Shift]"
t:LoadAutoloadConfig()










local ae=function()
z=f.CurrentCamera or z
end
G:add(f:GetPropertyChangedSignal"CurrentCamera":Connect(ae))

local af=function(af)
if af.Name=="Screech"then
N.new(af)
end
end
G:add(z.ChildAdded:Connect(af))

local ag=function(ag)
local ah=ag.Name
if ah=="RushMoving"or ag.Name=="AmbushMoving"then
O.new(ag)
elseif ah=="Eyes"then
ab(Toggles["alerts.entity"].Value,{
message="Eyes spawned, look away from it!",
audio=true,
duration=5,
})
elseif ah=="BananaPeel"then
ag.CanTouch=not Toggles["blatant.bananas.disable"].Value
end
end
G:add(f.ChildAdded:Connect(ag))



local ah=function()
if Toggles["blatant.screech.remove"].Value then
ab(Toggles["alerts.debug"].Value,{
message="Screech was eaten by TerminalVibes",
duration=4,
})
task.wait(1)
return B.Screech:FireServer(true)
end

ab(Toggles["alerts.entity"].Value,{
message="Screech spawned, turn around and look at it!",
audio=true,
duration=5,
})
end
G:add(B.Screech.OnClientEvent:Connect(ah))

local ai=function(ai,aj)
if ai and aj then
D[ai]=tostring(aj)
end
end
G:add(B.PadlockHint.OnClientEvent:Connect(ai))

local aj=function(...)
H:destroy()
if not Toggles["gameplay.heartbeat.enabled"].Value then
return
end

local aj=y:WaitForChild("MainUI",1):WaitForChild("MainFrame",1):WaitForChild("Heartbeat",1)
local ak=aj:WaitForChild("Heart",1)
assert(aj and ak,"Heartbeat frame not found")


local al=ak.AbsolutePosition.X
H:add(ak.ChildAdded:Connect(function(am)
if am.Name=="LiveHalf"then
local an=am.Image=="rbxassetid://8428304451"
local ao=math.random(10,25)

local ap=0
repeat
d.RenderStepped:Wait()
ap=math.abs(am.AbsolutePosition.X-al)
until ap<=ao

local aq=an and Enum.KeyCode.Q or Enum.KeyCode.E
g:SendKeyEvent(true,aq,false,game)
task.wait()
g:SendKeyEvent(false,aq,false,game)
ab(Toggles["alerts.debug"].Value,{
message="Simulated Heartbeat input: "..aq.Name,
duration=2.5,
})
end
end))
H:add(aj:GetPropertyChangedSignal"Visible":Connect(function()
if not aj.Visible then
H:destroy()
end
end))
end
G:add(B.ClutchHeartbeat.OnClientEvent:Connect(aj))



local ak=function(ak)
for al,am in ipairs(X)do
for an,ao in pairs(am.attached)do
ao:onTick(ak)
end
end
end
local al=function(al)
for am,an in ipairs(Y)do
for ao,ap in pairs(an.attached)do
ap:onRender(al)
end
end
end
local am=function(am,an)
for ao,ap in ipairs(Z)do
for aq,ar in pairs(ap.attached)do
ar:onPhysics(am,an)
end
end
local aq=K.attached
if aq then
aq:onPhysics(am,an)
end
end

G:add(d.Heartbeat:Connect(ak))
G:add(d.RenderStepped:Connect(al))
G:add(d.Stepped:Connect(am))



Options["gameplay.parser.keybind"]:OnClick(function()
if A.LatestRoom.Value==50 then
local an=""
for ao =1,5 do
local ap=D[E[ao] ]
an=an..(ap~=nil and ap or"_")
end
ab(Toggles["gameplay.parser.enabled"].Value,{
message="[Code Parser]: "..an,
audio=false,
duration=7.5,
})
end
end)

Options["gameplay.breaker.keybind"]:OnClick(function()
local an=""
for ao =1,#F do
local ap,aq=unpack(F[ao])
if aq then
an=an..tostring(ap).." "
end
end
ab(Toggles["gameplay.breaker.enabled"].Value,{
message="[Breaker Code]: "..an,
audio=false,
duration=7.5,
})
end)

Options["alerts.audio.volume"]:OnChanged(function()
C.Volume=Options["alerts.audio.volume"].Value
end)

Toggles["blatant.screech.remove"]:OnChanged(function()
ac(Toggles["blatant.screech.remove"].Value)
end)

Toggles["blatant.timothy.remove"]:OnChanged(function()
ad(Toggles["blatant.timothy.remove"].Value)
end)

s:OnUnload(function()
G:destroy()
I=true
getgenv()[k..i]=nil
local an={
L,
M,
N,
O,
P,
Q,
R,
S,
T,
U,
W,
}
for ao,ap in ipairs(an)do
for aq,ar in pairs(ap.attached)do
ar:destroy()
end
end
if K.attached then
K.attached:destroy()
end
end)







task.defer(function()
local an
repeat
task.wait(0.5)
for ao,ap in pairs(getconnections(B.EngageMinigame.OnClientEvent))do
local aq=ap.Function
if aq then
local ar=getfenv(aq).script
if ar.Name=="MinigameHandler"then
local as=debug.getupvalue(aq,1)
if type(as)=="function"then
an=as
end
end
end
end
until an~=nil

local ao
repeat
task.wait()
ao=debug.getupvalue(an,7)
until ao~=nil

local ap=(syn and syn.set_thread_identity)or setidentity
debug.setupvalue(an,7,function(aq,...)
local ar=ao(aq,...)
F=aq
task.delay(0.1,function()
ap(7)
local as=""
for at =1,#F do
local au,av=unpack(F[at])
if av then
as=as..tostring(au).." "
end
end
ab(Toggles["gameplay.breaker.enabled"].Value,{
message="[Breaker Code]: "..as,
audio=false,
duration=7.5,
})
ap(2)
end)
return ar
end)

G:add(function()
debug.setupvalue(an,7,ao)
end)
end)







table.insert(Y,L)
table.insert(Y,N)
table.insert(Y,O)
table.insert(Y,P)
table.insert(Y,Q)
table.insert(Y,R)
table.insert(Y,S)
table.insert(Y,T)

C.Name="Main"
C.SoundId="rbxassetid://6026984224"
C.Volume=6
C.Parent=e

task.delay(10,function()
ac(Toggles["blatant.screech.remove"].Value)
ad(Toggles["blatant.timothy.remove"].Value)
end)

do
local an=game.PlaceId
local ao=game.PlaceVersion
local ap=l[an]
if ao>ap then
s:Notify"Game has been updated! Please be careful when using this script."
s:Notify"The place ID and Version has been copied to your clipboard."
setclipboard("["..tostring(an).."] = "..tostring(ao)..",")
end
end

return s:Notify("["..h.."] Loaded! ("..i..")")
