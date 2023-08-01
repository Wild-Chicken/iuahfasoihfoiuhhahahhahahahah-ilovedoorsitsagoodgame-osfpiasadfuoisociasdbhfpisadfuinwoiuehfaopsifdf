local a=game:GetService"ContextActionService"
local b=game:GetService"Debris"
local c=game:GetService"Lighting"
local d=game:GetService"PathfindingService"
local e=game:GetService"Players"
local f=game:GetService"ReplicatedStorage"
local g=game:GetService"RunService"
local h=game:GetService"SoundService"
local i=game:GetService"Workspace"
local j=game:GetService"VirtualInputManager"







local k="Doors"
local l="Rooms v5.4"
local m="TerminalVibes/doors"
local n="rooms"

local o={[6839171747]=5941}







do
local p=game.PlaceId
local q=game.PlaceVersion
local r=o[p]
if not r then
warn"Script does not support this place instance."
warn"The PlaceID and version has been set to your clipboard. Please report this to the developer."
return setclipboard("["..tostring(p).."] = "..tostring(q)..",")
end
end
do
local p=n..l
if getgenv()[p]then
return
end
getgenv()[p]=true
end







local p="https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"

local q=loadstring(game:HttpGet(p.."Library.lua"))()
local r=loadstring(game:HttpGet(p.."addons/SaveManager.lua"))()
local s=loadstring(game:HttpGet(p.."addons/ThemeManager.lua"))()





























local t
do
local u,v=type,typeof
t=setmetatable({},{
__tostring=function()
return"Bin"
end,
})
t.__index=t
function t.new(...)
local w=setmetatable({},t)
return w:constructor(...)or w
end
function t.constructor(w)end
function t.add(w,x,y)
local z={
item=x,
method=y,
}
if w.head==nil then
w.head=z
end
if w.tail then
w.tail.next=z
end
w.tail=z
return x
end
function t.destroy(w)
while w.head do
local x=w.head.item
local y=w.head.method
if y then
x[y](x)
elseif u(x)=="function"then
x()
elseif v(x)=="RBXScriptConnection"then
x:Disconnect()
elseif u(x)=="thread"then
task.cancel(x)
elseif x.destroy~=nil then
x:destroy()
elseif x.Destroy~=nil then
x:Destroy()
end
w.head=w.head.next
end
end
function t.isEmpty(w)
return w.head==nil
end
end



local u
do
u={}
u.__index=u
function u.__tostring(v)
return"BaseComponent - "..v.instance:GetFullName()
end


local v,w,x=setmetatable,assert,task.defer


function u.new(y,...)
local z=v({},u)
z=z:constructor(y,...)or z
z:run()
return z
end


function u.constructor(y,z,...)
y.instance=z
y.running=false
y.destructed=false
y._maid=t.new()
y._maid:add(z.Destroying:Connect(function()
if not y.destructed then
y:destroy()
end
end))
end


function u.onStart(y)end


function u.run(y)
w(not y.running,"["..y:__tostring().."] is already running")
x(function()
y.running=true
if not y.destructed then
y:onStart()
end
end)
end

function u.destroy(y)
w(not y.destructed,"["..y:__tostring().."] is already destroyed")
y.running=false
y.destructed=true
y._maid:destroy()
end
end













































































































local v=e.LocalPlayer
local w=i.CurrentCamera

local x=f:WaitForChild"GameData"



local y={}


do
local z=f:WaitForChild"EntityInfo"
local A={
A90=z:WaitForChild"A90",
}
for B,C in pairs(A)do
y[B]=C
end
end

local z=Instance.new"Sound"

local A=t.new()
local B=false


local C
local D
local E
local F
local G
local H
local I
local J
local K
local L
local M
local N
local O
local P

local Q={}
local R={}
local S={}







local T={}local aa=function(
U, V)
local W=0.12

local X=t.new()
local Y=Drawing.new"Text"
local Z=Drawing.new"Square"
local _=Drawing.new"Square"
X:add(Y,"Remove")
X:add(Z,"Remove")
X:add(_,"Remove")

Y.Text=U or""
Y.Color=Color3.fromRGB(255,255,255)
Y.ZIndex=3

Z.Color=Color3.fromRGB(25,25,25)
Z.Filled=true
Z.Thickness=0
Z.Size=Y.TextBounds+Vector2.new(10,8)
Z.ZIndex=2

_.Color=Color3.fromRGB(0,100,255)
_.Filled=true
_.Thickness=0
_.Size=Vector2.new(2,24)
_.ZIndex=1

local aa=0
for ab in pairs(T)do
aa=math.max(aa,ab+1)
end
T[aa]=X

local ac=0
local ad,ae,af=pairs(T)
X:add(g.RenderStepped:Connect(function(ag)
ac+=ag

local ah,ai=ad(ae,af)
local aj=ah or 0
while ah~=nil do
aj=math.min(aj,ah)
ah,ai=ad(ae,ah)
end

local ak=aa-aj
local al=5
if ac<=W then
al=-(Z.Size.X+2)+(ac/W)*(Z.Size.X+7)
elseif ac>=V-W then
al=5-(ac-(V-W))/W*(Z.Size.X+7)
end

local am=Vector2.new(al,40+(ak*25))
Y.Position=am+Vector2.new(7,4)
Z.Position=am+Vector2.new(2,0)
_.Position=am
end))
X:add(g.RenderStepped:Once(function(ag)
Y.Visible=true
Z.Visible=true
_.Visible=true
end))
task.delay(V,function()
X:destroy()
T[aa]=nil
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
q:Notify(ad.message,ad.duration)
end
if ad.audio and Toggles["alerts.audio.enabled"].Value then
z.TimePosition=0.25
z:Play()
end
end end










do
local ac=u
C=setmetatable({},{__index=ac})
C.__index=C

function C.__tostring(ad)
return"CharacterComponent - "..ad.instance:GetFullName()
end
C.attached={}


function C.new(ad,...)
local ae=setmetatable({},C)
ae=ae:constructor(ad,...)or ae
ae:run()
return ae
end


function C.constructor(ad,ae)
ac.constructor(ad,ae)
ad.client=F.attached[e:GetPlayerFromCharacter(ae)]
ad.root=ae:WaitForChild("HumanoidRootPart",5)
ad.humanoid=ae:WaitForChild("Humanoid",5)

assert(ad.client~=nil,"["..ad:__tostring().."] is not a client's character")
assert(ad.root~=nil,"["..ad:__tostring().."] is missing a HumanoidRootPart")
assert(ad.humanoid~=nil,"["..ad:__tostring().."] is missing a Humanoid")

ad._maid:add(ae.AncestryChanged:Connect(function(af,ag)
if ag==nil then
ad:destroy()
end
end))
end


function C.onStart(ad)
C.attached[ad.instance]=ad
ac.onStart(ad)
end


function C.destroy(ad)
C.attached[ad.instance]=nil
ac.destroy(ad)
end
end



do

local ac=Vector3.new(1,0,1)

local ad=C
D=setmetatable({},{__index=ad})
D.__index=D

function D.__tostring(ae)
return"AvatarComponent - "..ae.instance:GetFullName()
end
D.attached=nil


function D.new(ae,...)
local af=setmetatable({},D)
af=af:constructor(ae,...)or af
af:run()
return af
end


function D.constructor(ae,af)
ad.constructor(ae,af)
ae.light=ae._maid:add(Instance.new"PointLight")
end


function D.onStart(ae)
D.attached=ae
ad.onStart(ae)

local af=ae.light
af.Enabled=false
af.Range=60
af.Color=Color3.new(1,1,1)
af.Shadows=false
af.Parent=ae.root

while ae.running and not B do
af.Enabled=Toggles["character.glow.enabled"].Value
af.Brightness=Options["character.glow.brightness"].Value/50
task.wait(0.1)
end
end

function D.onPhysics(ae,af,ag)
local ah=Options["character.sprint.speed"].Value
if
ah>0
and Toggles["character.sprint.enabled"].Value
and Options["character.sprint.keybind"]:GetState()
then
local ai=ae.humanoid.MoveDirection*ac
if ai.Magnitude>0 and not ae.root.Anchored then
ae.instance:TranslateBy(ai*ah*ag)
end
end
end


function D.destroy(ae)
D.attached=nil
ad.destroy(ae)
end
end



do

local ac=Vector3.new(5,7,0)
local ad=Vector3.new(0,-0.25,0)
local ae,af,ag,ah=
CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)
local ai=w.WorldToViewportPoint
local aj=Vector2.new
local ak=math.min

local al=C
E=setmetatable({},{__index=al})
E.__index=E

function E.__tostring(am)
return"FriendComponent - "..am.instance:GetFullName()
end
E.attached={}


function E.new(am,...)
local U=setmetatable({},E)
U=U:constructor(am,...)or U
U:run()
return U
end


function E.constructor(am,U)
al.constructor(am,U)
am.quad=Drawing.new"Quad"
am._maid:add(am.quad,"Remove")
end


function E.onStart(am)
E.attached[am.instance]=am
al.onStart(am)

local U=am.quad
U.Visible=false
U.Thickness=1
U.Transparency=0.75
end

function E.onRender(am,U)
local V=am.quad
if Toggles["esp.player.enabled"].Value then
local W=am.root.CFrame
local X=ai(w,(W*ae).Position)
local Y=ai(w,(W*af).Position)
local Z=ai(w,(W*ah).Position)
local _=ai(w,(W*ag).Position)
if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=aj(Y.X,Y.Y)
V.PointB=aj(X.X,X.Y)
V.PointC=aj(_.X,_.Y)
V.PointD=aj(Z.X,Z.Y)
V.Color=Options["esp.player.color"].Value
V.Visible=true
else
V.Visible=false
end
else
V.Visible=false
end
end


function E.destroy(am)
E.attached[am.instance]=nil
al.destroy(am)
end
end



do
local ac=u
F=setmetatable({},{__index=ac})
F.__index=F

function F.__tostring(ad)
return"ClientComponent - "..ad.instance:GetFullName()
end
F.attached={}


function F.new(ad,...)
local ae=setmetatable({},F)
ae=ae:constructor(ad,...)or ae
ae:run()
return ae
end


function F.constructor(ad,ae)
ac.constructor(ad,ae)
end


function F.onStart(ad)
F.attached[ad.instance]=ad
ac.onStart(ad)
ad._maid:add(ad.instance.CharacterAdded:Connect(function(ae)
ad:onCharacter(ae)
end))
ad._maid:add(ad.instance.Backpack.ChildAdded:Connect(function(ae)
if ae:IsA"Tool"then
ad:onTool(ae)
end
end))
task.defer(function()
local ae=ad.instance.Character
if ae then
ad:onCharacter(ae)
end
end)
task.defer(function()
for ae,af in ipairs(ad.instance.Backpack:GetChildren())do
if af:IsA"Tool"then
ad:onTool(af)
end
end
end)
end

function F.onCharacter(ad,ae)
if ad.instance==v then
ad.character=D.new(ae)
else
ad.character=E.new(ae)
end
end

function F.onTool(ad,ae)
if ae.Name=="LibraryHintPaper"then
local af=ae:WaitForChild("UI",1)
if af then
local ag={}
for ah =1,5 do
local ai=af:FindFirstChild(tostring(ah))
if ai then
local aj=ai.ImageRectOffset.X/50
ag[ah]=aj
end
end
libraryOrder=ag
end
end
end


function F.destroy(ad)
F.attached[ad.instance]=nil
ac.destroy(ad)
end


local ad=function(ad)
F.new(ad)
end

e.PlayerAdded:Connect(ad)
for ae,af in ipairs(e:GetPlayers())do
task.defer(ad,af)
end
end



do

local ac=Vector3.new(4,6,0)
local ad=Vector3.new(0,0,0)
local ae,af,ag,ah=
CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)
local ai=w.WorldToViewportPoint
local aj=Vector2.new
local ak=math.min

local al=u
G=setmetatable({},{__index=al})
G.__index=G

function G.__tostring(am)
return"A60Component - "..am.instance:GetFullName()
end
G.attached={}


function G.new(am,...)
local U=setmetatable({},G)
U=U:constructor(am,...)or U
U:run()
return U
end


function G.constructor(am,U)
al.constructor(am,U)
am.root=U.PrimaryPart or U:WaitForChild("Main",5)
assert(am.root,"["..am:__tostring().."] is missing a root part!")
am.quad=Drawing.new"Quad"
am._maid:add(am.quad,"Remove")
end


function G.onStart(am)
G.attached[am.instance]=am
al.onStart(am)

local U=am.quad
U.Visible=false
U.Thickness=1
U.Color=am:getColor()

P.attached:input"Hide"
ab(Toggles["alerts.entity"].Value,{
message="A60 spawned, run and hide in the closest locker!",
duration=7.5,
audio=true,
})
end

function G.onRender(am,U)
local V=am.quad
if am:isEnabled()then
local W=am.root.CFrame
local X=ai(w,(W*ae).Position)
local Y=ai(w,(W*af).Position)
local Z=ai(w,(W*ah).Position)
local _=ai(w,(W*ag).Position)
if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=aj(Y.X,Y.Y)
V.PointB=aj(X.X,X.Y)
V.PointC=aj(_.X,_.Y)
V.PointD=aj(Z.X,Z.Y)
V.Visible=true
else
V.Visible=false
end
else
V.Visible=false
end
end


function G.isEnabled(am)
return Toggles["esp.rush.enabled"].Value
end

function G.getColor(am)
return Options["esp.rush.a60-color"].Value
end

function G.destroy(am)
G.attached[am.instance]=nil
al.destroy(am)
P.attached:input"Return"
end
end



do

local ac=Vector3.new(4,6,0)
local ad=Vector3.new(0,0,0)
local ae,af,ag,ah=
CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)
local ai=w.WorldToViewportPoint
local aj=Vector2.new
local ak=math.min

local al=u
H=setmetatable({},{__index=al})
H.__index=H

function H.__tostring(am)
return"A120Component - "..am.instance:GetFullName()
end
H.attached={}


function H.new(am,...)
local U=setmetatable({},H)
U=U:constructor(am,...)or U
U:run()
return U
end


function H.constructor(am,U)
al.constructor(am,U)
am.root=U.PrimaryPart or U:WaitForChild("Main",5)
assert(am.root,"["..am:__tostring().."] is missing a root part!")
am.quad=Drawing.new"Quad"
am._maid:add(am.quad,"Remove")
end


function H.onStart(am)
H.attached[am.instance]=am
al.onStart(am)

local U=am.quad
U.Visible=false
U.Thickness=1
U.Color=am:getColor()

P.attached:input"Hide"

ab(Toggles["alerts.entity"].Value,{
message="A120 spawned, run and hide in the closest locker!",
duration=7.5,
audio=true,
})
end

function H.onRender(am,U)
local V=am.quad
if am:isEnabled()then
local W=am.root.CFrame
local X=ai(w,(W*ae).Position)
local Y=ai(w,(W*af).Position)
local Z=ai(w,(W*ah).Position)
local _=ai(w,(W*ag).Position)
if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=aj(Y.X,Y.Y)
V.PointB=aj(X.X,X.Y)
V.PointC=aj(_.X,_.Y)
V.PointD=aj(Z.X,Z.Y)
V.Visible=true
else
V.Visible=false
end
else
V.Visible=false
end
end


function H.isEnabled(am)
return Toggles["esp.rush.enabled"].Value
end

function H.getColor(am)
return Options["esp.rush.a120-color"].Value
end

function H.destroy(am)
H.attached[am.instance]=nil
al.destroy(am)
P.attached:input"Return"
ab(Toggles["alerts.entity"].Value,{
message="A120 despawned, you are safe to continue your run!",
duration=4,
audio=true,
})
end
end



do

local ac=CFrame.new(0,0,1)
local ad=w.WorldToViewportPoint
local ae=Vector2.new
local af=math.min

local ag=u
I=setmetatable({},{__index=ag})
I.__index=I

function I.__tostring(ah)
return"DoorComponent - "..ah.instance:GetFullName()
end
I.attached={}


function I.new(ah,...)
local ai=setmetatable({},I)
ai=ai:constructor(ah,...)or ai
ai:run()
return ai
end


function I.constructor(ah,ai,aj)
ag.constructor(ah,ai)
ah.id=aj or 0

local ak=ai.Size*0.5
local al=ai.CFrame*ac
ah.tl=(al*CFrame.new(ak.X,ak.Y,0)).Position
ah.tr=(al*CFrame.new(-ak.X,ak.Y,0)).Position
ah.bl=(al*CFrame.new(ak.X,-ak.Y,0)).Position
ah.br=(al*CFrame.new(-ak.X,-ak.Y,0)).Position

ah.quad=Drawing.new"Quad"
ah._maid:add(ah.quad,"Remove")
end


function I.onStart(ah)
I.attached[ah.instance]=ah
ag.onStart(ah)

local ai=ah.quad
ai.Visible=false
ai.Thickness=2
end

function I.onRender(ah,ai)
local aj=ah.quad
if Toggles["esp.door.enabled"].Value then
local ak=ad(w,ah.tl)
local al=ad(w,ah.tr)
local am=ad(w,ah.br)
local U=ad(w,ah.bl)
if af(ak.Z,al.Z,am.Z,U.Z)>0 then
aj.PointA=ae(al.X,al.Y)
aj.PointB=ae(ak.X,ak.Y)
aj.PointC=ae(U.X,U.Y)
aj.PointD=ae(am.X,am.Y)

local V=ah.id-x.LatestRoom.Value
if V==0 then
aj.Color=Options["esp.door.target-color"].Value
else
aj.Color=Options["esp.door.default-color"].Value
if V<0 then
aj.Transparency=0.5
else
aj.Transparency=1.0
end
end

aj.Visible=true
else
aj.Visible=false
end
else
aj.Visible=false
end
end


function I.destroy(ah)
I.attached[ah.instance]=nil
ag.destroy(ah)
end
end



do

local ac=Vector3.new(4.675,7.15,0)
local ad=Vector3.new(0,0,-1.25)
local ae,af,ag,ah=
CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)
local ai=w.WorldToViewportPoint
local aj=Vector2.new
local ak=math.min

local al=u
J=setmetatable({},{__index=al})
J.__index=J

function J.__tostring(am)
return"WardrobeComponent - "..am.instance:GetFullName()
end
J.attached={}


function J.new(am,...)
local U=setmetatable({},J)
U=U:constructor(am,...)or U
U:run()
return U
end


function J.constructor(am,U,V)
al.constructor(am,U)
am.id=V
am.root=U:WaitForChild("Base",5)
am.occupant=U:WaitForChild("HiddenPlayer",5)
am.prompt=U:WaitForChild("HidePrompt",5)

am.quad=Drawing.new"Quad"
am._maid:add(am.quad,"Remove")
end


function J.onStart(am)
J.attached[am.instance]=am
al.onStart(am)

local U=am.quad
U.Visible=false
U.Thickness=2
end

function J.onRender(am,U)
local V=am.quad
if Toggles["esp.locker.enabled"].Value then
local W=am.root.CFrame
local X=ai(w,(W*ae).Position)
local Y=ai(w,(W*af).Position)
local Z=ai(w,(W*ah).Position)
local _=ai(w,(W*ag).Position)
if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=aj(Y.X,Y.Y)
V.PointB=aj(X.X,X.Y)
V.PointC=aj(_.X,_.Y)
V.PointD=aj(Z.X,Z.Y)
V.Color=Options["esp.locker.color"].Value
if am.occupant.Value then
V.Transparency=0.10
elseif x.LatestRoom.Value-am.id>1 then
V.Transparency=0.25
else
V.Transparency=0.60
end
V.Visible=true
else
V.Visible=false
end
else
V.Visible=false
end
end


function J.destroy(am)
J.attached[am.instance]=nil
al.destroy(am)
end
end



do

local ac=w.WorldToViewportPoint
local ad=Vector2.new
local ae=ad(0,3)

local af=u
K=setmetatable({},{__index=af})
K.__index=K

function K.__tostring(ag)
return"InteractableComponent - "..ag.instance:GetFullName()
end
K.attached={}


function K.new(ag,ah,...)
local ai=setmetatable({},K)
ai=ai:constructor(ag,ah,...)or ai
ai:run()
return ai
end


function K.constructor(ag,ah,ai)
af.constructor(ag,ah)
ag.name=ai
ag.label=Drawing.new"Text"
ag.circle=Drawing.new"Circle"
ag.outline=Drawing.new"Circle"
ag._maid:add(ag.label,"Remove")
ag._maid:add(ag.circle,"Remove")
ag._maid:add(ag.outline,"Remove")
ag._maid:add(ah.AncestryChanged:Connect(function(aj,ak)
if ak==nil then
ag:destroy()
end
end))
end


function K.onStart(ag)
K.attached[ag.instance]=ag
af.onStart(ag)

local ah,ai,aj=ag.label,ag.circle,ag.outline
ah.Text=ag.name
ah.Size=18
ah.Center=true
ah.Outline=true
ah.Visible=false

ai.Thickness=1
ai.NumSides=6
ai.Radius=5
ai.Filled=true
ai.Visible=false

aj.Color=Color3.new()
aj.Thickness=1.5
aj.NumSides=6
aj.Radius=5
aj.Filled=false
aj.Visible=false
aj.ZIndex=2
end

function K.onRender(ag,ah)
local ai,aj,ak=ag.label,ag.circle,ag.outline
if ag:isVisualEnabled()then
local al=ac(w,ag.instance.Position)
local am=al.Z>0
if am then
local U=ad(al.X,al.Y)
ai.Position=U+ae
aj.Position=U
ak.Position=U

local V=ag:getColor()
ai.Color=V
aj.Color=V
end
ai.Visible=am
aj.Visible=am
ak.Visible=am
else
ai.Visible=false
aj.Visible=false
ak.Visible=false
end
end


function K.isVisualEnabled(ag)
return Toggles["esp.interactable.enabled"].Value
end

function K.getColor(ag)
return Options["esp.interactable.color"].Value
end

function K.destroy(ag)
K.attached[ag.instance]=nil
af.destroy(ag)
end
end



do
local ac=K
L=setmetatable({},{__index=ac})
L.__index=L

function L.__tostring(ad)
return"ObtainableComponent - "..ad.instance:GetFullName()
end
L.attached={}


function L.new(ad,ae,...)
local af=setmetatable({},L)
af=af:constructor(ad,ae,...)or af
af:run()
return af
end


function L.constructor(ad,ae,af)
ac.constructor(ad,ae,af)
end


function L.onStart(ad)
L.attached[ad.instance]=ad
ac.onStart(ad)
local ae,af,ag=ad.label,ad.circle,ad.outline
af.NumSides=5
ag.NumSides=5
end


function L.isVisualEnabled(ad)
return Toggles["esp.obtainable.enabled"].Value
end

function L.getColor(ad)
return Options["esp.obtainable.color"].Value
end

function L.destroy(ad)
L.attached[ad.instance]=nil
ac.destroy(ad)
end
end



do
local ac=L
M=setmetatable({},{__index=ac})
M.__index=M

function M.__tostring(ad)
return"GoldComponent - "..ad.instance:GetFullName()
end


function M.new(ad,...)
local ae=setmetatable({},M)
ae=ae:constructor(ad,...)or ae
ae:run()
return ae
end


function M.constructor(ad,ae)
ac.constructor(ad,ae,"Gold")
ad.denomination=0
end


function M.onStart(ad)
ac.onStart(ad)
ad:onDenominationChanged()
ad.instance:GetAttributeChangedSignal"GoldValue":Connect(function()
ad:onDenominationChanged()
end)
end

function M.onRender(ad,ae)
ad.label.Text=Options["esp.gold.format"].Value:gsub("{amount}",tostring(ad.denomination))
ac.onRender(ad,ae)
end

function M.onDenominationChanged(ad)
ad.denomination=ad.instance.Parent:GetAttribute"GoldValue"or 0
end


function M.isVisualEnabled(ad)
return Toggles["esp.gold.enabled"].Value and ad.denomination>=Options["esp.gold.minimum"].Value
end

function M.getColor(ad)
return Options["esp.gold.color"].Value
end
end



do local ac=function()


return Toggles["interact.enabled"].Value and Options["interact.keybind"]:GetState()end


local ad=u
N=setmetatable({},{__index=ad})
N.__index=N

function N.__tostring(ae)
return"RoomComponent - "..ae.instance:GetFullName()
end
N.attached={}


function N.new(ae,...)
local af=setmetatable({},N)
af=af:constructor(ae,...)or af
af:run()
return af
end


function N.constructor(ae,af)
ad.constructor(ae,af)
ae.id=tonumber(af.Name)
ae.assets=af:WaitForChild("Assets",5)
end


function N.onStart(ae)
N.attached[ae.instance]=ae
ad.onStart(ae)

local af=ae.instance:WaitForChild("RoomExit",5)
if af then
I.new(af,ae.id)
end


ae._maid:add(ae.instance.DescendantAdded:Connect(function(ag)
ae:onDescendant(ag)
end))
for ag,ah in ipairs(ae.instance:GetDescendants())do
task.defer(ae.onDescendant,ae,ah)
end
end

function N.onDescendant(ae,af)
local ag=af.Parent
local ah=ag.Name
local ai=af.Name
if ai=="Main"then
if ah=="Battery"then
L.new(af,"Batteries")
end
elseif ai=="Rooms_Locker"or ai=="Rooms_Locker_Fridge"then
J.new(af,ae.id)
elseif ai=="Hitbox"then
if ah=="GoldPile"then
M.new(af)
end
end


if af:IsA"ProximityPrompt"then
local aj=t.new()
ae._maid:add(aj)

local ak
local al=af
local am=os.clock()

local U=""
local V=0.2
local W=1
local X=al.MaxActivationDistance+5


if ah=="GoldPile"then
U="Gold"
ak=ag:WaitForChild("Hitbox",5)
end


if ah=="Battery"then
U="Battery"
V=0.5
W=math.huge

ak=ag:WaitForChild("Main",5)
end


if ak then
local Y=game.IsDescendantOf local Z=function()


if not ae.destructed and Y(al,ae.instance)then
local Z=al:GetAttribute"Interactions"
if not Z or Z<W then
return true
end
end
return false end local an=function()


if ac()then
local _=Options["interact.filter"].Value
local an=Options["interact.filter-type"].Value
if an=="Whitelist"then
return _[U]~=nil
elseif an=="Blacklist"then
return _[U]==nil
elseif an=="Disabled"then
return true
end
end
return false end


aj:add(g.Heartbeat:Connect(function()
if not Z()then
return aj:destroy()
end
if not an()then
return
end

local _=os.clock()
if _-am>=V then
local ao=D.attached
local ap=(ak.Position-ao.root.Position).Magnitude
if ap<=X then
fireproximityprompt(al)
am=_
end
end
end))
end

return
end
end


function N.destroy(ae)
N.attached[ae.instance]=nil
ad.destroy(ae)
end


local ae=function(ae)
N.new(ae)
end
A:add(i.CurrentRooms.ChildAdded:Connect(ae))
for af,ag in ipairs(i.CurrentRooms:GetChildren())do
ae(ag)
end
end




do

local ac=Vector3.new(1,0,1)


local ad=u
O=setmetatable({},{__index=ad})
O.__index=O

function O.__tostring(ae)
return"RoomNodes - "..ae.instance.Name
end
O.attached={}


function O.new(ae,...)
local af=setmetatable({},O)
af=af:constructor(ae,...)or af
af:run()
return af
end


function O.constructor(ae,af)
ad.constructor(ae,af)
ae.id=tonumber(af.Name)
ae.generation_id=af:GetAttribute"OriginalName"
ae.nodes={}
ae.locker_links={}
ae.visuals={}
ae.entrance=af:WaitForChild("RoomEntrance",5)
ae.exit=af:WaitForChild("RoomExit",5)
end


function O.onStart(ae)

ae:generateNodes()
task.wait(0.5)
ae:generateLinks()
if ae.generation_id=="Rooms_End"and Toggles["pathfinder.stop-on-exit"].Value then
ae.nodes[#ae.nodes]=nil
end
ae:generateVisuals()


ad.onStart(ae)
O.attached[ae.id]=ae
end


function O.generateNodes(ae)
local af=ae.nodes
local ag=ae.generation_id

local ah=ae.entrance.CFrame
local ai=ah:ToObjectSpace(ae.exit.CFrame).Position

table.insert(af,CFrame.new(0,0,0))


if ag=="Rooms_Start"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(0,0,-35.75))
elseif ag=="Rooms_End"then
table.insert(af,CFrame.new(0,0,-5))
table.insert(af,CFrame.new(-12,0,-8))
table.insert(af,CFrame.new(-3,0,-20))
table.insert(af,CFrame.new(0,0,-39))
elseif ag=="Rooms_End1000"then
table.insert(af,CFrame.new(0,0,-15))


elseif ag=="Rooms_Empty1"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(0,0,-54))


elseif ag=="Rooms_Lockers1"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(0,0,-54))
elseif ag=="Rooms_Lockers2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(0,0,-64))
elseif ag=="Rooms_Lockers3"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(6,0,-64))
elseif ag=="Rooms_Lockers4"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-6,0,-64))


elseif ag=="Rooms_Curve1"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(10,0,-40))
table.insert(af,CFrame.new(12.13,0,-54))
elseif ag=="Rooms_Curve2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(10,0,-50))
table.insert(af,CFrame.new(12.13,0,-64))
elseif ag=="Rooms_Curve3"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(20,0,-50))
table.insert(af,CFrame.new(22.13,0,-64))
elseif ag=="Rooms_AltCurve1"then
table.insert(af,CFrame.new(0,0,-3))
table.insert(af,CFrame.new(-12.13,0,-54))
elseif ag=="Rooms_AltCurve2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-12.13,0,-64))
elseif ag=="Rooms_AltCurve3"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-15.5,0,-40))
table.insert(af,CFrame.new(-22.13,0,-64))


elseif ag=="Rooms_Cubby1"then
table.insert(af,CFrame.new(0,0,-5))
table.insert(af,CFrame.new(7.5,0,-12.5))
table.insert(af,CFrame.new(7.5,0,-37.5))
table.insert(af,CFrame.new(-9.38,0,-54))
elseif ag=="Rooms_Cubby2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(6,0,-23.5))
table.insert(af,CFrame.new(6,0,-45))
table.insert(af,CFrame.new(-9.38,0,-64))
elseif ag=="Rooms_AltCubby1"then

if ai:FuzzyEq(Vector3.new(0,0,-54),0.05)then
table.insert(af,CFrame.new(-10,0,-20))
table.insert(af,CFrame.new(-10,0,-30))
table.insert(af,CFrame.new(0,0,-54))

elseif ai:FuzzyEq(Vector3.new(9.38,0,-54),0.05)then
table.insert(af,CFrame.new(-5.75,0,-15))
table.insert(af,CFrame.new(-5.75,0,-35))
table.insert(af,CFrame.new(9.38,0,-54))
end
elseif ag=="Rooms_AltCubby2"then

if ai:FuzzyEq(Vector3.new(0,0,-64),0.05)then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-11.4,0,-35))
table.insert(af,CFrame.new(-11,0,-40))
table.insert(af,CFrame.new(0,0,-64))


elseif ai:FuzzyEq(Vector3.new(9.38,0,-64),0.05)then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-5,0,-26))
table.insert(af,CFrame.new(-5,0,-45))
table.insert(af,CFrame.new(9.38,0,-64))
end


elseif ag=="Rooms_Skinny1"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-6,0,-40))
table.insert(af,CFrame.new(-6.13,0,-54))
elseif ag=="Rooms_Skinny2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-6.13,0,-45))
table.insert(af,CFrame.new(-6.13,0,-64))
elseif ag=="Rooms_AltSkinny1"then
table.insert(af,CFrame.new(6.13,0,-37.5))
table.insert(af,CFrame.new(6.13,0,-54))
elseif ag=="Rooms_AltSkinny2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(6.13,0,-50))
table.insert(af,CFrame.new(6.13,0,-64))


elseif ag=="Rooms_Hallway1"then
table.insert(af,CFrame.new(-5,0,-8))
table.insert(af,CFrame.new(-5,0,-42))
table.insert(af,CFrame.new(0,0,-54))
elseif ag=="Rooms_Hallway2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-5,0,-18.33))
table.insert(af,CFrame.new(-5,0,-52.5))
table.insert(af,CFrame.new(0,0,-64))


elseif ag=="Rooms_Catwalk1"then
table.insert(af,CFrame.new(0,0,-12))
table.insert(af,CFrame.new(0,0,-56))
elseif ag=="Rooms_Catwalk2"then
table.insert(af,CFrame.new(0,0,-12))
table.insert(af,CFrame.new(0,0,-58))
elseif ag=="Rooms_Catwalk3"then
table.insert(af,CFrame.new(0,0,-12))
table.insert(af,CFrame.new(12,0,-17.5))
table.insert(af,CFrame.new(12,0,-66))
elseif ag=="Rooms_Catwalk4"then
table.insert(af,CFrame.new(0,0,-12))
table.insert(af,CFrame.new(-12,0,-20))
table.insert(af,CFrame.new(-12,0,-66))


elseif ag=="Rooms_Kitchen1"then
table.insert(af,CFrame.new(0,0,-5))
table.insert(af,CFrame.new(-8.7,0,-28.5))
table.insert(af,CFrame.new(-7,0,-36.5))
table.insert(af,CFrame.new(0,0,-54))
elseif ag=="Rooms_Kitchen2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-9,0,-38))
table.insert(af,CFrame.new(-8,0,-45))
table.insert(af,CFrame.new(0,0,-64))


elseif ag=="Rooms_Desk1"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(0,0,-54))
elseif ag=="Rooms_Desk2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(0,0,-64))
elseif ag=="Rooms_Desk3"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(10,0,-64))


elseif ag=="Rooms_Storage1"then
table.insert(af,CFrame.new(0,0,-5))
table.insert(af,CFrame.new(-8,0,-40))
table.insert(af,CFrame.new(-7,0,-48))
table.insert(af,CFrame.new(-2,0,-50))
table.insert(af,CFrame.new(0,0,-54))
elseif ag=="Rooms_Storage2"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-3,0,-35))
table.insert(af,CFrame.new(-7.6,0,-50))
table.insert(af,CFrame.new(-7.25,0,-56))
table.insert(af,CFrame.new(0,0,-64))
elseif ag=="Rooms_Storage3"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(-16,0,-50))
table.insert(af,CFrame.new(-15.3,0,-57.5))
table.insert(af,CFrame.new(-8,0,-60))
table.insert(af,CFrame.new(-8,0,-64))
elseif ag=="Rooms_Storage4"then
table.insert(af,CFrame.new(0,0,-10))
table.insert(af,CFrame.new(5.75,0,-30))
table.insert(af,CFrame.new(-3.34,0,-54.18))
table.insert(af,CFrame.new(8,0,-64))
end


local aj=tostring(ae.id)
local ak=ae.generation_id
local al=Toggles["pathfinder.enabled"].Value and Toggles["alerts.debug"].Value
if#ae.nodes>1 then
ab(al,{
message="Room "..aj.." recognized! Generating nodes for: "..ak,
duration=5,
})
else
ab(al,{
message="Room "..aj.." is not recognized! No nodes found for: "..ak,
duration=5,
})
end
end

function O.generateLinks(ae)
local af=ae.entrance.CFrame
local ah,ai=ae.nodes,ae.locker_links

local aj={}
for ak,al in pairs(J.attached)do
if al.id==ae.id then
table.insert(aj,al)
end
end

for am =1,#ah-1 do
local an=af*ah[am]
local ao=af*ah[am+1]
local ap=(an.Position-ao.Position).Magnitude


local U={}


for V =0,ap,2.5 do
local W=V/ap
local X=an:Lerp(ao,V/ap)


local Y={}
for Z,_ in ipairs(aj)do
local aq=_.root.Position
local ar=aq-X.Position
if math.abs(ar.Y)>10 then
continue
end

local as=ar*ac
local at=true
for au =-2.5,0,1 do
local av=X.Position+Vector3.new(0,au,0)
local aw=i:Raycast(av,as)
local ax=((aq-aw.Position)*ac).Magnitude
if ax>5 then
at=false
break
end
end
if at then
table.insert(Y,_)
end
end
if#Y>0 then
local aq
local ar=math.huge
for as,at in ipairs(Y)do
local au=(at.root.Position-X.Position).Magnitude
if au<ar then
aq=at
ar=au
end
end
table.insert(U,{W,aq})
end
end


ai[am]=U
end
end

function O.generateVisuals(ae)
local af=ae.entrance.CFrame
local ah,ai,aj=ae.nodes,ae.locker_links,ae.visuals

local ak=ae._maid:add(Instance.new"Folder")
for al =1,#ah-1 do
local am=af*ah[al]
local an=af*ah[al+1]
local ao=(am.Position-an.Position).Magnitude


for ap =5,ao-1,5 do
local aq=am:Lerp(an,ap/ao)
local ar=ae._maid:add(Instance.new"Part")
ar.Color=Color3.new(0,0,1)
ar.Material=Enum.Material.Neon
ar.Anchored=true
ar.CanCollide=false
ar.CanTouch=false
ar.CanQuery=false
ar.Size=Vector3.new(0.2,0.2,0.2)
ar.CFrame=aq-Vector3.new(0,3.9,0)
ar.Parent=ak
table.insert(aj,ar)
end

local ap=ai[al]
for aq,ar in ipairs(ap or{})do
local as=ae._maid:add(Instance.new"Part")
as.Color=Color3.new(0,1,0)
as.Material=Enum.Material.Neon
as.Anchored=true
as.CanCollide=false
as.CanTouch=false
as.CanQuery=false
as.Size=Vector3.new(0.1,1,0.1)
as.CFrame=am:Lerp(an,ar[1])-Vector3.new(0,4,0)
as.Parent=ak
table.insert(aj,as)
end

local as=ae._maid:add(Instance.new"Part")
as.Color=Color3.new(1,0,0)
as.Material=Enum.Material.Neon
as.Anchored=true
as.CanCollide=false
as.CanTouch=false
as.CanQuery=false
as.Size=Vector3.new(0.2,0.2,0.2)
as.CFrame=am-Vector3.new(0,3.9,0)
as.Parent=ak
table.insert(aj,as)
end

ae:updateVisuals()
ak.Parent=i
end

function O.updateVisuals(ae)
local af=Toggles["pathfinder.debug"].Value
for ah,ai in ipairs(ae.visuals)do
ai.Transparency=af and 0 or 1
end
end

function O.destroy(ae)
O.attached[ae.id]=nil
ad.destroy(ae)
end


local ae=function(ae)
O.new(ae)
end
A:add(i.CurrentRooms.ChildAdded:Connect(ae))
for af,ah in ipairs(i.CurrentRooms:GetChildren())do
task.defer(ae,ah)
end
end

do

local ac={
Idle=0,
Progressing=1,
MovingToLocker=2,
HidingInLocker=3,
ReturnFromLocker=4,
}


local ad,ae=Vector3.new(1,0,1),Vector3.zero


local af=u
P=setmetatable({},{__index=af})
P.__index=P

function P.__tostring(ah)
return"Agent"
end
P.attached=nil


function P.new(ah,...)
local ai=setmetatable({},P)
ai=ai:constructor(ah,...)or ai
ai:run()
return ai
end


function P.constructor(ah,ai)
af.constructor(ah,ai)
ah.id=1
ah.index=1
ah.state=ac.Progressing
ah.root=ai:WaitForChild("HumanoidRootPart",5)
ah.humanoid=ai:WaitForChild("Humanoid",5)
end


function P.onStart(ah)
P.attached=ah
ah.id=x.LatestRoom.Value
ah.index=1
end

function P.onPhysics(ah,ai,aj)
if not Toggles["pathfinder.enabled"].Value then
return
end

local ak,al,am=ah.id,ah.index,ah.state
local an=O.attached[ak]
local ao,ap,aq=ah.instance,ah.root,ah.humanoid
if not an or ap.Anchored then
return
end

local ar=ap.Position


if ah.state==ac.Progressing then
local as=an.entrance.CFrame*an.nodes[al]
local at=as.Position-ar
local au=(at*ad).Magnitude
if au<=1 then
if al<#an.nodes then
ah.index=al+1
else
ah.id=ak+1
ah.index=1
end
else
local av=at.Unit*ad
local aw=math.min(Options["pathfinder.speed"].Value*aj,au)
ao:PivotTo(CFrame.new(ar+(av*aw)))
end


elseif ah.state==ac.MovingToLocker then
local as=ah.target_locker
if as.id==ah.id then
local at=as.index<ah.index and-1 or 1
local au=an.entrance.CFrame*an.nodes[ah.index]
local av=au.Position-ar
local aw=(av*ad).Magnitude
if aw<=1 then
ah.index=al+at
if as.index==ah.index then
ah.state=ac.HidingInLocker
end
else
local ax=av.Unit*ad
local U=math.min(Options["pathfinder.speed"].Value*aj,aw)
ao:PivotTo(CFrame.new(ar+(ax*U)))
end
else
local at=an.entrance.CFrame*an.nodes[ah.index]
local au=at.Position-ar
local av=(au*ad).Magnitude
if av<=1 then
if al==1 then
ah.id=ak-1
ah.index=#O.attached[ah.id].nodes
else
ah.index=al-1
end
else
local aw=au.Unit*ad
local ax=math.min(Options["pathfinder.speed"].Value*aj,av)
ao:PivotTo(CFrame.new(ar+(aw*ax)))
end
end


elseif ah.state==ac.HidingInLocker then
local as=ah.target_locker
local at=an.locker_links[as.index][as.link]
local au=at[2]
local av=au.root.Position
local aw=av-ar
local ax=(aw*ad).Magnitude
if ax<=5 then
fireproximityprompt(au.prompt)
else
local U=aw.Unit*ad
local V=math.min(Options["pathfinder.speed"].Value*aj,ax)
ao:PivotTo(CFrame.new(ar+(U*V)))
end


elseif ah.state==ac.ReturnFromLocker then
local as=ah.target_locker
local at=an.locker_links[as.index][as.link]
local au=an.entrance.CFrame
*an.nodes[as.index]:Lerp(an.nodes[as.index+1],at[1])
local av=au.Position-ar
local aw=(av*ad).Magnitude
if aw<=1 then
ah.state=ac.Progressing
if as.index<#an.nodes then
ah.index=as.index+1
else
ah.id=ak+1
ah.index=1
end
else
local ax=av.Unit*ad
local U=math.min(Options["pathfinder.speed"].Value*aj,aw)
ao:PivotTo(CFrame.new(ar+(ax*U)))
end
end
end


function P.input(ah,ai,aj)
if ai=="Hide"then
local ak={id=x.LatestRoom.Value,index=1,link=1}
local al=math.huge

do
local am=O.attached[ah.id]
local an,ao=am.nodes,am.locker_links
local ap=0
local aq=0
for ar =1,#an-1,1 do
local as,at=am.entrance.CFrame*an[ar],am.entrance.CFrame*an[ar+1]
ap+=aq
aq=(as.Position-at.Position).Magnitude
if ap>al then
break
end

local au=ao[ar]or{}
for av =1,#au,1 do
local aw=au[av]
local ax,U=
as:Lerp(at,aw[1]).Position,aw[2].root.Position

local V=(as.Position-ax).Magnitude
local W=((ax-U)*ad).Magnitude
local X=ap+V+W
if X<al then
ak.id=am.id
ak.index=ar
ak.link=av
al=X
end
end
end
end
do
local am=O.attached[ah.id-1]
local an,ao=am.nodes,am.locker_links
local ap=0
local aq=0
for ar =#an-1,1,-1 do
local as,at=am.entrance.CFrame*an[ar],am.entrance.CFrame*an[ar+1]
ap+=aq
aq=(as.Position-at.Position).Magnitude
if ap>al then
break
end

local au=ao[ar]or{}
for av =#au,1,-1 do
local aw=au[av]
local ax,U=
as:Lerp(at,aw[1]).Position,aw[2].root.Position

local V=(at.Position-ax).Magnitude
local W=((ax-U)*ad).Magnitude
local X=ap+V+W
if X<al then
ak.id=am.id
ak.index=ar
ak.link=av
al=X
end
end
end
end

ah.state=ac.MovingToLocker
ah.target_locker=ak
if ak.id<ah.id then
local am=ah.index
if am>1 then
ah.index=am-1
else
ah.id=ah.id-1
ah.index=#O.attached[ak.id].nodes
end
end



local am=O.attached[ak.id]
local an=am.entrance.CFrame*am.nodes[ak.index]
local ao=am.entrance.CFrame*am.nodes[ak.index+1]
local ap=am.locker_links[ak.index][ak.link]

local aq=an:Lerp(ao,ap[1])
local ar=ah._maid:add(Instance.new"Part")
ar.Color=Color3.new(1,1,0)
ar.Material=Enum.Material.Neon
ar.Anchored=true
ar.CanCollide=false
ar.CanTouch=false
ar.CanQuery=false
ar.Size=Vector3.new(0.2,0.2,0.2)
ar.CFrame=aq-Vector3.new(0,0,0)
ar.Parent=i
b:AddItem(ar,10)
elseif ai=="Return"then
ah.state=ac.ReturnFromLocker
end
end

function P.destroy(ah)
P.attached=nil
af.destroy(ah)
end


local ah=function(ah)
P.new(ah)
end
A:add(v.CharacterAdded:Connect(ah))
local ai=v.Character
if ai then
task.defer(ah,ai)
end
end







q:SetWatermark"Linoria Community (TerminalVibes)"
q:Notify"Loading UI..."

do
local ac=q:CreateWindow(k.." ("..l..")")

do
local ad=ac:AddTab"Gameplay"

do
local ae=ad:AddLeftGroupbox"Character Mods"
ae:AddToggle(
"character.sprint.enabled",
{Text="Sprint Enabled",Default=false,Tooltip="Enables Sprinting by pressing the Keybind"}
):AddKeyPicker("character.sprint.keybind",{Text="Sprint",Default="LeftShift"})
ae:AddSlider(
"character.sprint.speed",
{Text="Sprint Boost (in seconds)",Min=0,Max=7.5,Default=0,Rounding=1,Suffix=" studs"}
)
ae:AddToggle(
"character.glow.enabled",
{Text="Body Glow",Default=false,Tooltip="Adds a subtle glow for better vision"}
)
ae:AddSlider(
"character.glow.brightness",
{Text="Glow Brightness",Min=0,Max=100,Default=0,Rounding=0,Suffix=""}
)
end

do
local ae=ad:AddLeftGroupbox"Gameplay Mods"
ae:AddToggle("gameplay.a90.disable-movement",{
Text="A90 Movement Hook",
Default=false,
Tooltip="Disables movement when A90 appears.",
})
end

do
local ae=ad:AddRightTabbox"Alerts"

local af=ae:AddTab"Alerts"
af:AddToggle(
"alerts.enabled",
{Text="Alerts Enabled",Default=true,Tooltip="Master toggle for all script alerts."}
)
af:AddToggle("alerts.drawing",{
Text="Use Drawing API",
Default=true,
Tooltip="Enables the drawing API for script alerts.",
})
af:AddToggle("alerts.audio.enabled",{
Text="Enable Sound",
Default=true,
Tooltip="Plays a sound when an important alert is triggered.",
})
af:AddSlider(
"alerts.audio.volume",
{Text="Alert Volume",Min=1,Max=10,Default=6,Rounding=0,Suffix=""}
)
af:AddButton{
Text="Test Alert",
Func=function()
ab(true,{
message="This is a test alert!",
duration=4,
audio=true,
})
end,
}

local ah=ae:AddTab"Advanced"
ah:AddToggle(
"alerts.debug",
{Text="Debug Alerts",Default=false,Tooltip="Enabled alerts related to script status."}
)
ah:AddToggle(
"alerts.entity",
{Text="Entity Alerts",Default=true,Tooltip="Enabled alerts about entities spawning."}
)
end
end

do
local ad=ac:AddTab"Blatant"

do
local ae=ad:AddLeftGroupbox"Pathfinder (Beta)"
ae:AddToggle("pathfinder.enabled",{
Text="Enabled",
Default=false,
Tooltip="Automatically finds the fastest path to the next room.",
})
ae:AddToggle("pathfinder.stop-on-exit",{
Text="Stop on Checkpoints",
Default=true,
Tooltip="Stops the pathfinder when it reaches a checkpoint.",
})
ae:AddToggle("pathfinder.debug",{
Text="Show Nodes (Debug)",
Default=false,
Tooltip="Shows pathfinder nodes and traversal links.",
})
ae:AddSlider("pathfinder.speed",{
Text="Speed",
Min=1,
Max=30,
Default=16,
Rounding=0,
Suffix=" studs",
})
ae:AddButton{
Text="Test Hide",
Func=function()
P.attached:input"Hide"
end,
}
ae:AddButton{
Text="Test Unhide",
Func=function()
P.attached:input"Return"
end,
}
end

do
local ae=ad:AddRightGroupbox"Auto Interact"
ae:AddToggle("interact.enabled",{
Text="Enabled",
Default=false,
Tooltip="Automatically loots items for you.",
}):AddKeyPicker("interact.keybind",{
Text="Auto-Interact",
Default="F",
})
ae:AddDropdown("interact.filter",{
Text="Interact Filter",
Tooltip="Selected items will be filtered by the auto-interact.",

Values={"Gold","Battery"},
Default={},
Multi=true,
})
ae:AddDropdown("interact.filter-type",{
Text="Filter Behavior",
Values={"Disabled","Whitelist","Blacklist"},
Default=1,
})
end

do
local ae=ad:AddRightGroupbox"Entity Hooks"

ae:AddToggle("blatant.a90.remove",{
Text="Remove A90",
Default=false,
Tooltip="A90 will no longer spawn for you.",
})
end
end

do
local ad=ac:AddTab"Visuals"

do
local ae=ad:AddLeftTabbox"ESP"

local af=ae:AddTab"Entity ESP"
do
af:AddToggle(
"esp.player.enabled",
{Text="Player ESP",Default=true,Tooltip="ESP for other players"}
):AddColorPicker("esp.player.color",{
Title="Player ESP Color",
Default=Color3.new(1,1,1),
})
af:AddToggle(
"esp.rush.enabled",
{Text="A60/A120 ESP",Default=true,Tooltip="ESP for both A60 and A120 entities"}
)
:AddColorPicker("esp.rush.a60-color",{
Title="A60 ESP Color",
Default=Color3.new(1,0,0),
})
:AddColorPicker("esp.rush.a120-color",{
Title="A120 ESP Color",
Default=Color3.new(0.8,0,0),
})
end

local ah=ae:AddTab"Object ESP"
do
ah:AddToggle("esp.door.enabled",{Text="Door ESP",Default=false,Tooltip="ESP for doors"})
:AddColorPicker("esp.door.default-color",{
Title="Other Doors ESP Color",
Default=Color3.new(0,0.3,0.75),
})
:AddColorPicker("esp.door.target-color",{
Title="Current Door ESP Color",
Default=Color3.new(0,1,0),
})
ah
:AddToggle(
"esp.locker.enabled",
{Text="Locker ESP",Default=false,Tooltip="ESP for lockers"}
)
:AddColorPicker("esp.locker.color",{
Title="Locker ESP Color",
Default=Color3.new(0,1,0.9),
})
ah:AddToggle(
"esp.interactable.enabled",
{Text="Interactable ESP",Default=true,Tooltip="ESP for interactable items"}
):AddColorPicker("esp.interactable.color",{
Title="Interactable ESP Color",
Default=Color3.new(1,1,1),
})
ah:AddToggle(
"esp.obtainable.enabled",
{Text="Obtainable ESP",Default=true,Tooltip="ESP for items that can be picked up"}
):AddColorPicker("esp.obtainable.color",{
Title="Obtainable ESP Color",
Default=Color3.new(1,1,0),
})
end
end

do
local ae=ad:AddLeftGroupbox"Gold ESP"
ae:AddToggle(
"esp.gold.enabled",
{Text="Gold ESP",Default=true,Tooltip="ESP for items that can be picked up"}
):AddColorPicker("esp.gold.color",{
Title="Gold ESP Color",
Default=Color3.new(1,1,0),
})
ae:AddInput("esp.gold.format",{
Text="Custom Label",
Default="Gold [{amount}]",
Placeholder="Label Text",
Tooltip="Custom text to display for gold. {amount} will be replaced with the amount of gold.",
})
ae:AddSlider("esp.gold.minimum",{
Text="Minimum Gold",
Default=10,
Min=0,
Max=100,
Rounding=0,
Tooltip="Minimum amount of gold to display",
})
end

do
local ae=ad:AddRightGroupbox"Lighting"
ae:AddButton{
Text="Full Bright",
Func=function()
c.Ambient=Color3.fromRGB(200,200,200)
c.Brightness=1
c.ClockTime=12
A:add(c:GetPropertyChangedSignal"Ambient":Connect(function()
local af=Color3.fromRGB(200,200,200)
if c.Ambient~=af then
c.Ambient=af
end
end))
A:add(c:GetPropertyChangedSignal"Brightness":Connect(function()
if c.Brightness~=1 then
c.Brightness=1
end
end))
A:add(c:GetPropertyChangedSignal"ClockTime":Connect(function()
if c.ClockTime~=12 then
c.ClockTime=12
end
end))
end,
}
end
end

do
local ad=ac:AddTab"Credits"

local ae=ad:AddLeftGroupbox"Credits"
ae:AddLabel"TerminalVibes - Creator"
ae:AddLabel"Inori @v3rm - UI Library"
ae:AddDivider()
ae:AddLabel"Contributors:"
ae:AddLabel"> reversing#2937 @discord"
ae:AddLabel"> yuuiz#1336 @discord"
ae:AddLabel"> Ferris#8276 @discord"
ae:AddLabel"> Lythicals#0001 @discord"
ae:AddLabel"> brickmane @v3rm"
ae:AddLabel"> BlockOfGaming"

local af=ad:AddRightGroupbox"Socials"
af:AddButton{
Text="Discord Server",
Func=function()
setclipboard"https://discord.gg/8PATx7UKXZ"
end,
}
end

do
local ad=ac:AddTab"Settings"

s:SetLibrary(q)
r:SetLibrary(q)

s:SetFolder(m)
r:SetFolder(m.."/"..n)

r:IgnoreThemeSettings()
r:SetIgnoreIndexes{"MenuKeybind"}

r:BuildConfigSection(ad)
s:ApplyToTab(ad)

local ae=ad:AddLeftGroupbox"Menu"
ae:AddButton("Unload",function()
q:Unload()
end)
ae:AddLabel"Menu bind":AddKeyPicker("MenuKeybind",{Default="Delete",NoUI=true,Text="Menu keybind"})
q.ToggleKeybind=Options.MenuKeybind

ae:AddToggle("Keybinds",{Text="Show Keybinds Menu",Default=true}):OnChanged(function()
q.KeybindFrame.Visible=Toggles.Keybinds.Value
end)
ae:AddToggle("Watermark",{Text="Show Watermark",Default=true}):OnChanged(function()
q:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
end
end

q:Notify"UI Built! [Right Ctrl or Right Shift]"
r:LoadAutoloadConfig()










local ac=function()
w=i.CurrentCamera or w
end
A:add(i:GetPropertyChangedSignal"CurrentCamera":Connect(ac))

local ad=function(ad)
local ae=ad.Name
if ae=="A60"then
G.new(ad)
elseif ae=="A120"then
H.new(ad)
end
end
A:add(i.ChildAdded:Connect(ad))local ae=function()




if Toggles["blatant.a90.remove"].Value then
ab(Toggles["alerts.debug"],{
message="A90 was eaten by TerminalVibes",
duration=4,
})
return
end

if Toggles["gameplay.a90.disable-movement"].Value then
task.wait(0.9)


local ae=D.attached
ae.root.AssemblyLinearVelocity=Vector3.zero
j:SendKeyEvent(false,Enum.KeyCode.W,false,game)
j:SendKeyEvent(false,Enum.KeyCode.A,false,game)
j:SendKeyEvent(false,Enum.KeyCode.S,false,game)
j:SendKeyEvent(false,Enum.KeyCode.D,false,game)


a:BindAction("a90.freeze",function()
return Enum.ContextActionResult.Sink
end,false,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.E)


local af=w.CFrame
local ah=g.RenderStepped:Connect(function()
w.CFrame=af
end)


task.wait(0.4)
ah:Disconnect()
a:UnbindAction"a90.freeze"
end end

A:add(y.A90.OnClientEvent:Connect(ae))



local af=function(af)
for ah,ai in ipairs(Q)do
for aj,ak in pairs(ai.attached)do
ak:onTick(af)
end
end
end
local ah=function(ah)
for ai,aj in ipairs(R)do
for ak,al in pairs(aj.attached)do
al:onRender(ah)
end
end
end
local ai=function(ai,aj)
for ak,al in ipairs(S)do
for am,an in pairs(al.attached)do
an:onPhysics(ai,aj)
end
end
local am,an=D.attached,P.attached
if am then
am:onPhysics(ai,aj)
end
if an then
an:onPhysics(ai,aj)
end
end

A:add(g.Heartbeat:Connect(af))
A:add(g.RenderStepped:Connect(ah))
A:add(g.Stepped:Connect(ai))





Options["alerts.audio.volume"]:OnChanged(function()
z.Volume=Options["alerts.audio.volume"].Value
end)


Toggles["pathfinder.enabled"]:OnChanged(function()
for aj,ak in pairs(O.attached)do
ak:updateVisuals()
end
end)
Toggles["pathfinder.debug"]:OnChanged(function()
for aj,ak in pairs(O.attached)do
ak:updateVisuals()
end
end)


Toggles["blatant.a90.remove"]:OnChanged(function()
local aj={}
for ak,al in ipairs(getconnections(y.A90.OnClientEvent))do
local am=al.Function
if am then
local an=getfenv(am).script
if an and an.Name=="RemoteListener"then
table.insert(aj,al)
end
end
end

if Toggles["blatant.a90.remove"].Value then
for am,an in ipairs(aj)do
an:Disable()
end
else
for am,an in ipairs(aj)do
an:Enable()
end
end
end)


q:OnUnload(function()
A:destroy()
B=true
getgenv()[n..l]=nil
local aj={
E,
F,
G,
H,
I,
J,
K,
L,
N,
O,
}
for ak,al in ipairs(aj)do
for am,an in pairs(al.attached)do
an:destroy()
end
end
if D.attached then
D.attached:destroy()
end
if P.attached then
P.attached:destroy()
end
end)














table.insert(R,E)
table.insert(R,G)
table.insert(R,H)
table.insert(R,I)
table.insert(R,J)
table.insert(R,K)

z.Name="Main"
z.SoundId="rbxassetid://6026984224"
z.Parent=h

do
local aj=game.PlaceId
local ak=game.PlaceVersion
local al=o[aj]
if ak>al then
q:Notify"Game has been updated! Please be careful when using this script."
q:Notify"The place ID and Version has been copied to your clipboard."
setclipboard("["..tostring(aj).."] = "..tostring(ak)..",")
end
end

return q:Notify("["..k.."] Loaded! ("..l..")")
