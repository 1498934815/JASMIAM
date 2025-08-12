local key={104,89,104,71,106,67,122,84,108,75,98,70,122,67,120,73,114,89,110,87,98,71,115,65,104,80,108,87,116,75,115,67,101,84,106,90,118,77,111,84,111,69,101,89,98,83,106,71,122,68,116,74,106,66,110,85,108,86,104,75,119,77,118,79,109,66,97,74,110,85,105,76,98,68,100,79,120,72,103,68,103,70,114,86,101,79,115,65,103,83,115,69,117,89,122,76,107,70,119,82,99,83,105,69,108,83,103,89,120,65,102,83,109,85,101,89,110,72,119,75,109,85,99,76,122,74,119,88,108,73,98,74,106,65,115,73,119,68,118,77,112,76,108,89,108,82,97,83,104,73,120,89,107,76,122,90,120,70,118,88,104,79,113,74,97,78,101,77,105,83,108,71,103,68,119,84,99,74,118,75,119,74,99,76,108,73,97,82,110,74,100,69,103,85,117,72,119,80,114,73}
local value_var,var
local tab_by = {}
local ar3="p"
local tab_by = {}
local asc_EA = "i"
local asc_E5 = "s"
local asc_E7 = "g"
local asc_EC = "n"
local ar1="("
local asc_E9 = "h"
local asc_EF = "a"
local asc_EB = "t"
local asc_E4 = "r"
local ar2="l"
local asc_E2 = "c"
local asc_E1 = "m"
local asc_E3 = "o"
local ar4 = "d"
local asc_E6 = "u"
local asc_E8 = "b"
local asc_EQ = "e"
local asc_EY = "y"
local char_ = _ENV[asc_E5 .. asc_EB .. asc_E4 .. asc_EA .. asc_EC .. asc_E7][asc_E2 .. asc_E9 .. asc_EF .. asc_E4]
local len = _ENV[asc_E5 .. asc_EB .. asc_E4 .. asc_EA .. asc_EC .. asc_E7][ar2..asc_EQ..asc_EC]
local tonum = _ENV[asc_EB .. asc_E3 .. asc_EC .. asc_E6 .. asc_E1 .. asc_E8 .. asc_EQ .. asc_E4]
local sub_ = _ENV[asc_E5 .. asc_EB .. asc_E4 .. asc_EA .. asc_EC .. asc_E7][asc_E5 .. asc_E6 .. asc_E8]
local byte_ = _ENV[asc_E5 .. asc_EB .. asc_E4 .. asc_EA .. asc_EC .. asc_E7][asc_E8 .. asc_EY .. asc_EB .. asc_EQ]
local Str_L = {}
local decryptString=function(encryptedString, key1,key2)
wkey2=""
for i,v in pairs(key2)do
jie=char_(v)
wkey2=wkey2..jie
end
local key=wkey2..key1
local decryptedString = ""
local keyLength = len(key)
for i = 1, len(encryptedString) do
local char = sub_(encryptedString, i, i)
local keyChar = sub_(key, (i % keyLength) + 1, (i % keyLength) + 1)
local offset = (byte_(char) - byte_(keyChar)) % 256
local decryptedChar = char_(offset)
decryptedString = decryptedString .. decryptedChar
end
return decryptedString
end
local PY=function(number)
number=number-1255return number
end
local _Decscript=function(Decrypt,wkey,key2) 
Rebound= decryptString(Decrypt, wkey,key2)
return Rebound
end
local StrVM = _ENV[asc_E5 .. asc_EQ .. asc_EB .. asc_E1 .. asc_EQ .. asc_EB .. asc_EF .. asc_EB .. asc_EF .. asc_E8 .. ar2 .. asc_EQ]({} , {
['__' .. asc_EA .. asc_EC .. ar4 .. asc_EQ .. 'x'] = function(a,b)
return b 
end
})

return { 
	[_Decscript(StrVM['\x28\xf2\xff\x18\xcc\x05\xef\xf1\xde\xe4\xcf\x55\x51\xee\x11'],key[PY(1423)]+key[PY(1318)],{68,57,51,66,48,69,49,49,55,57,57,70,67,68,66,53,68,57,57,55,56,56,56,48,54,68,53,68,55,68,53,50})] = 1,
	[_Decscript(StrVM['\x23\xf5\xee\x1d\xbe\x06\x00\x0a\x09\x23\xbb\xa1\xbc\x12\xd3'],key[PY(1304)]-key[PY(1306)],{69,52,54,49,53,55,49,67,65,53,68,51,56,67,55,50,51,49,50,51,70,67,65,69,67,53,55,70,68,48,56,52})] = 1,

	[_Decscript(StrVM['\x27\x00\xf5\x2c\xc0\xea\xf7\x0b\xdb\x09\xcc\xa8\x43\x0e\x1f'],key[PY(1332)]*key[PY(1368)],{67,56,65,56,68,57,67,57,65,52,49,66,65,52,52,69,55,55,51,53,52,54,56,56,49,53,53,57,52,65,69,52})] = 1,
}


