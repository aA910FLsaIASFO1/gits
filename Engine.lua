return {
    AssertDirectory = function(item, table, defaultContent)
        if item == nil then
            return warn("Atempt to find null directory.")
        end

        if table == nil then
            table = {}
        end

        if defaultContent == nil then
            defaultContent = {}
        end

        if
            pcall(
                function()
                    game:GetService("HttpService"):JSONDecode(readfile(item))
                end
            ) == true
         then
            table = game:GetService("HttpService"):JSONDecode(readfile(item))
        else
            table = defaultContent

            writefile(item, game:GetService("HttpService"):JSONEncode(defaultContent))
        end
    end,
    AssertAllDirectories = function()
        local assertFolder = function(patch)
            if not isfolder(patch) then
                makefolder(patch)
            end
        end

        assertFolder("AutoExec")

        assertFolder("b/")

        assertFolder("s")

        assertFolder("tabs")

        assertFolder("tabsV3")

        assertFolder("Themes")

        assertFolder("ExecutorConfigs")
    end,
    SaveColor = function(color)
        return {
            R = color.R * 255,
            G = color.G * 255,
            B = color.B * 255
        }
    end,
    GetColor = function(color)
        return Color3.fromRGB(color.R, color.G, color.B)
    end,
    GetIcon = function(str)
        return "rbxthumb://type=Asset&w=150&h=150&id=" .. str
    end,
    getImage = function(str)
        return "rbxthumb://type=Asset&w=768&h=432&id=" .. str
    end,
    Secure = function(item)
        local function randomString()
            local length = math.random(100, 200)

            local array = {}

            for i = 1, length do
                array[i] = string.char(math.random(32, 126))
            end

            return table.concat(array)
        end

        item.Name = randomString()

        for i, v in pairs(item:GetDescendants()) do
            v.Name = randomString()
        end
    end,
    AutoExecute = function()
        _G.HxAuto = true

        for i, v in pairs(listfiles("AutoExec")) do
            loadstring(v)()
        end
    end,
    ScriptList = {
        Enable = function(button)
            button.MouseButton1Click:Connect(
                function()
                end
            )
        end
    }
}
