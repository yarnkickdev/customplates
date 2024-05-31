local runtimetxd = "customplates_txd"
local vehshare = "vehshare"
local txd = CreateRuntimeTxd(runtimetxd)
local textures = {
    plate01 = 'plate01',
    plate01_n = 'plate01_n',
    plate02 = 'plate02',
    plate02_n = 'plate02_n',
    plate03 = 'plate03',
    plate03_n = 'plate03_n',
    plate04 = 'plate04',
    plate04_n = 'plate04_n',
    plate05 = 'plate05',
    plate05_n = 'plate05_n',
    yankton_plate = 'yankton_plate',
    yankton_plate_n = 'yankton_plate_n',
}

for _, v in pairs(textures) do
    CreateRuntimeTextureFromImage(txd, tostring(v), "assets/"..Config.Style.."/"..v..".png")
    AddReplaceTexture(vehshare, tostring(v), runtimetxd, tostring(v))
end
