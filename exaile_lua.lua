local str = ""
local x

local f = io.popen("exaile -q") -- store the output in a "file"
local str = f:read("*a") 
local count = 0
local tmp = {"","","","","", ""}
local output = ""

--print(str)

while count < 5 do
	x = string.find(str,",")
	tmp[count] = string.sub(str,string.find(str,":") + 1,x - 1) -- Now playing
	str = string.sub(str,x + 1,string.len(str))
	count = count + 1
	
	if count > 1 then
		output = output .. tmp[count] .. "\n"
	end
end


local input = tonumber(arg[1])
tmp[5] = string.sub(str,string.find(str,":") + 1,x - 1)
tmp[6] = tmp[5] .. "%"
tmp[0] = string.sub(tmp[0], 3, string.len(str))
print(tmp[input])
