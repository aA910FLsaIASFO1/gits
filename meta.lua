--graphic
    local l = game:GetService("Lighting")
    local s = l:FindFirstChildOfClass("Sky")
    local RunService = game:GetService("RunService")

    local a = l:FindFirstChildOfClass("Atmosphere")
    local ColorCorrection = l:FindFirstChildOfClass("ColorCorrectionEffect")
    local sr= l:FindFirstChildOfClass("SunRaysEffect")
    l.Name="Lightingg"
    s.Name="Sky"
    a.Name="Atm"
    ColorCorrection.Name="CC"
    sr.Name="SRE"
    local function f(id)
        return "rbxassetid://" .. id
    end

    local function rgb(r, g, b)
        return Color3.fromRGB(r, g, b)
    end

    sr.Intensity=0.05
    sr.Spread=1
    -- Skybox padrão
    local defaultSkybox = {
        Bk = f("6444884337"),
        Up = f("6412503613"),
        Dn = f("6444884785"),
        Ft = f("6444884337"),
        Lf = f("6444884337"),
        Rt = f("6444884337"),
    }

    local function applySkybox()
        s.SkyboxBk = defaultSkybox.Bk
        s.SkyboxUp = defaultSkybox.Up
        s.SkyboxDn = defaultSkybox.Dn
        s.SkyboxFt = defaultSkybox.Ft
        s.SkyboxLf = defaultSkybox.Lf
        s.SkyboxRt = defaultSkybox.Rt
        s.MoonTextureId = f("6444320592")
        s.SunTextureId = f("6196665106")
    end

    local function day()
        applySkybox()
        s.SunAngularSize = 10
        s.StarCount = 3000
        s.MoonAngularSize = 10
        s.CelestialBodiesShown = true

        l.Brightness = 3
        l.Ambient = rgb(150, 150, 150)
        l.OutdoorAmbient = rgb(180, 180, 180)
    end

    local function sunset()
        applySkybox()

        s.SunAngularSize = 10
        s.StarCount = 3000
        s.MoonAngularSize = 10
        s.CelestialBodiesShown = true

        l.Ambient = rgb(50, 50, 50)
        l.OutdoorAmbient = rgb(50, 50, 50)
        l.Brightness = 2

        a.Density = 0.25
        a.Color = rgb(199, 142, 43)
        a.Glare = 0.5
        a.Haze = 0.8
    end

    local function night()
        applySkybox()

        s.StarCount = 5000
        s.MoonAngularSize = 9

        l.Brightness = 2
        l.Ambient = rgb(50, 50, 50)
        l.OutdoorAmbient = rgb(50, 50, 50)
        l.EnvironmentDiffuseScale = 0.2

        ColorCorrection.Brightness = 0.05
        ColorCorrection.Saturation = 0
        ColorCorrection.Contrast = 0.2

        a.Density = 0.2
        a.Offset = 0.199
        a.Color = rgb(102, 113, 135)
        a.Decay = rgb(211, 176, 176)
        a.Glare = 1.1
        a.Haze = 1.5
    end

    -- Alternador automático baseado na ClockTime
    local function autoCycle()
        local time = l.ClockTime
        if time >= 6 and time < 17 then
            day()
        elseif time >= 17 and time < 19 then
            sunset()
        else
            night()
        end
    end

    -- Faz o tempo passar automaticamente
    local timeSpeed = 0.05 -- quanto maior, mais rápido o tempo passa

    RunService.Heartbeat:Connect(function(dt)
        --l.ClockTime = (l.ClockTime + dt * timeSpeed) % 24
        autoCycle()
    end)
