--πΆπ πΌπππππ’ πππππ π°πππ ππππππ

gg.setRanges(gg.REGION_C_ALLOC|gg.REGION_CODE_APP|gg.REGION_ANONYMOUS|gg.REGION_VIDEO)
 
 --πππππππ π΅ππππ 2
 function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to Open")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully Opened")else gg.toast(_on.."\nFailed to Open")end end end

--πππππππ π΅ππππ 2
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end

--πππππππ π΅ππππ 3
function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' ΠΌΟβΞΉfΞΉΡβ \nΞΉΠΈ '..b) end

--πππππππ π΅ππππ 4
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false  end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(""..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found !", false) return false end else return false end end


--πππππππ π΅ππππ 5
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end


--πππππππ π΅ππππ 6
function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' MODIFIED \nIN '..b) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "SUCCESSFULLY OPENEDοΌδΈALL TOGETHER" .. xgsl .. "DATA") else gg.toast(qmnb[2]["name"] .. "NO DATA FOUNDοΌ FAILED TO OPEN") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("SUCCESSFULLY OPENοΌδΈALL TOGETHER MODIFIED"..#t.."DATA") gg.addListItems(t) else gg.toast("NOT DATA FOUNDοΌOPEN FAILED", false) return false end else gg.toast("NOT FOUND") return false end end

--πππππππ πΈππππππππ π΅ππππ

--π²πΌπ³ πΎπ½ πΎπ΅π΅ π΅πΎπ πππ²

off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP1 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP2 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP3 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP4 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP5 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP6 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP7 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP8 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
UP9 = off
--π²ππ ππ πππ πππππ

off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
CFlash1 = off
off = " π½ππ-π°ππππππππ"                              
on = " π°ππππππππ"
CFlash2 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
CFlash3 = off
off = " π½ππ-π°ππππππππ"
on = " π°ππππππππ"
MFlash = off

TOAST = "ππ΄π½πΈπππ π»ππ° π²πΎπ³πΈπ½πΆ"

MMENU = [[
- βοΈ ππππππ ππππππ ππ  : 4.10.2021
- βοΈ ππππππ πππππππ πππππππ : 1.1
- βοΈ πΆπππ ππππππ πππππππ : 1.6
- βοΈ πππ??ππ π²ππππ : πΌπ.πππππππ
]]
Menu = gg.alert(os.date(MMENU), "π· π»ππππ ππππππ", "β¦οΈ π»πππππ")
if Menu == nil then end
if Menu == 1 then end
if Menu == 2 then print(MMENU) return os.exit() end

gg.setVisible(false)                               
  
  function main()
Zen = gg.prompt({
	"πππ² 0.1.0.1 ~ 0.1.0.9",
"π²πππππ ππππ πΏπππππππππ",
"ππππππ π°ππππππππ",
"πΆπππ πΏπππ’ π°ππππππππ",
"π±πππππ π°ππππππππ",
"πΎππ π²ππππ ππππππ",
"π΄π‘ππ ππππππ π²ππππππ",
"ππππππ π²ππππ : πΌπ.πππππππ"
}, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
if Zen == nil then
else
if Zen[1] == true then
SRC()
end
if Zen[2] == true then
CSP()
end
if Zen[3] == true then
WA()
end
if Zen[4] == true then
G()
end
if Zen[5] == true then
B()
end
if Zen[6] == true then
OCS()
end
if Zen[7] == true then
LO()
end
end
WHOAMI = -1
end

function SRC()
MSRC = gg.prompt({
	"πππ 0.1.0.1"..UP1,
	"πππ 0.1.0.2"..UP2,
	"πππ 0.1.0.3"..UP3,
	"πππ 0.1.0.4"..UP4,
	"πππ 0.1.0.5"..UP5,
	"πππ 0.1.0.6"..UP6,
	"πππ 0.1.0.7"..UP7,
	"πππ 0.1.0.8"..UP8,
	"πππ 0.1.0.9"..UP9,
	"πΌπππ πΌπππ",
"ππππππ π²ππππ : πΌπ.πππππππ"

}, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
if MSRC == nil then
else
if MSRC[1] == true then
UPSRC1()
end
if MSRC[2] == true then
UPSRC2()
end
if MSRC[3] == true then
UPSRC3()
end
if MSRC[4] == true then
UPSRC4()
end
if MSRC[5] == true then
UPSRC5()
end
if MSRC[6] == true then
UPSRC6()
end
if MSRC[7] == true then
UPSRC7()
end
if MSRC[8] == true then
UPSRC8()
end
if MSRC[9] == true then
UPSRC9()
end
if MSRC[10] == true then
main()
end
end
WHOAMI = -1
end

function UPSRC1()
ZEN = gg.alert("πππ ππ ππ 0.1.0.1", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN == 1 then
UPSR1()
end
if ZEN == 2 then
OFFSR()
end
end


function UPSR1()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,49) ---  0.1.0.1
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end


function UPSRC2()
ZEN1 = gg.alert("πππ ππ ππ 0.1.0.2", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN1 == 1 then
UPSR2()
end
if ZEN1 == 2 then
OFFSR()
end
end


function UPSR2()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,50) ---  0.1.0.2
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end


function UPSRC3()
ZEN2 = gg.alert("πππ ππ ππ 0.1.0.3", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN2 == 1 then
UPSR3()
end
if ZEN2 == 2 then
OFFSR()
end
end


function UPSR3()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,51) ---  0.1.0.3
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end

function UPSRC4()
ZEN3 = gg.alert("πππ ππ ππ 0.1.0.4", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN3 == 1 then
UPSR4()
end
if ZEN3 == 2 then
OFFSR()
end
end


function UPSR4()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,52) ---  0.1.0.4
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end

function UPSRC5()
ZEN4 = gg.alert("πππ ππ ππ 0.1.0.5", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN4 == 1 then
UPSR5()
end
if ZEN4 == 2 then
OFFSR()
end
end


function UPSR5()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,53) ---  0.1.0.5
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end

function UPSRC6()
ZEN6 = gg.alert("πππ ππ ππ 0.1.0.6", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN6 == 1 then
UPSR7()
end
if ZEN6 == 2 then
OFFSR()
end
end


function UPSR7()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,54) ---  0.1.0.6
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end

function UPSRC7()
ZEN7 = gg.alert("πππ ππ ππ 0.1.0.7", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN7 == 1 then
UPSR8()
end
if ZEN7 == 2 then
OFFSR()
end
end


function UPSR8()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,55) ---  0.1.0.7
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end

function UPSRC8()
ZEN8 = gg.alert("πππ ππ ππ 0.1.0.8", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN8 == 1 then
UPSR9()
end
if ZEN8 == 2 then
OFFSR()
end
end


function UPSR9()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,56) ---  0.1.0.8
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end

function UPSRC9()
ZEN9 = gg.alert("πππ ππ ππ 0.1.0.9", "γ πΎπβ γ", "γ πΎππβ γ")
if ZEN9 == 1 then
UPSR10()
end
if ZEN9 == 2 then
OFFSR()
end
end


function UPSR10()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,0)
py=0x67E376C  setvalue(so+py,4,57) ---  0.1.0.9
gg.alert(" π³ππ'π π΅πππππ ππ π³πππππππππ π°ππππ πππ πππππ ")
gg.toast("πππ² πΎπ½") 
end
----------------------------------------------------------------------------------------

function OFFSR()
so=gg.getRangesList('libUE4.so')[1].start
py=108939448  setvalue(so+py,4,7274563)
py=0x67E376C  setvalue(so+py,4,48) ---  0.1.0.1
gg.alert("π½ππ  πΎπππππππ πππ")
gg.clearResults()
gg.toast("πππ² πΎπ΅π΅")
end


function CSP()
MCSP = gg.prompt({
	"π΅ππππ πΏπππππππππ π»πππ ",
	"π΅ππππ πΏπππππππππ π»ππππ’",
"πΌπππ πΌπππ"

}, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
if MCSP == nil then
else
if MCSP[1] == true then
flp()
end
if MCSP[2] == true then
flplb()
end
if MCSP[3] == true then
main()
end
end
WHOAMI = -1
end



function flp()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
so=gg.getRangesList('libtersafe.so')[1].start
py=0x35581C setvalue(so+py,32,0)
py=0xcd584
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcd33c
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcde80
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcd1e4
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcd4f0
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcda6c
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xf498
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcd468
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcde04
setvalue(so+py,4,0x5040401)
so=gg.getRangesList('libtersafe.so')[1].start
py=0xcd090
setvalue(so+py,4,0x5040401)
gg.clearResults()
end

function flplb()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.84749992e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.84749992e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.5047707E-36", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.85108725e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.85108725e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.5047707E-36", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.87258316e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1.87258316e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.5047707E-36", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,378;133,379", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("134658", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,382;133,381", gg.TYPE_DWORD)
gg.refineNumber("133382", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("8064", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4096;135682", gg.TYPE_DWORD)
gg.refineNumber("4096", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("8064", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;134658", gg.TYPE_DWORD)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(62877)
gg.editAll("134658", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.toast(TOAST)
gg.alert(TOAST)
end


------------------------------------------------------------------------------------------

function WA()
ZENWA = gg.prompt({
"ππππππ ππππππ",
"ππππππ π²ππππππππ",
"πΏπππππππππ π°πππππ",
"πΏπππππππππ π·πππππππ",
"πΏπππππππππ π±πππππ",
"π±πππ ππ πΌππππΌπππ",
"ππππππ π²ππππ : πΌπ.πππππππ"
}, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
if ZENWA == nil then
else
if ZENWA[1] == true then
RECOIL()
end
if ZENWA[2] == true then
CROSSHAIR()
end
if ZENWA[3] == true then
AIMBOT()
end
if ZENWA[4] == true then
HEADSHOT()
end
if ZENWA[5] == true then
MAGIC()
end
if ZENWA[6] == true then
main()
end
end
WHOAMI = -1
end




function RECOIL()
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="ππππππ ππππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{0, 0x14EC4F4},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function CROSSHAIR()
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="ππππππ π²ππππππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{0, 0x1EC65CC},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function AIMBOT()
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="πΏπππππππππ π°πππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{0, 0x28E4620},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function HEADSHOT()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 16
local Name ="πΏπππππππππ π·πππππππ"
local Searching = {
{23.0, 0x0},
{25.0, 0x4},
{30.5, 0x8},
}
local Edit = {
{-270.0, 0x0},
{270.0, 0x4},
{270.0, 0x8},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function MAGIC()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 16
local Name ="πΏπππππππππ π±πππππ"
local Searching = {
{35.0, 0x0},
{33.0, 0x4},
{69.5, 0x8},
}
local Edit = {
{270.0, 0x0},
{-270.0, 0x4},
{270.0, 0x8},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function G()
ZENGA = gg.prompt({
"π±ππππ πππ’",
"π½πππππΌπππ",
"πΈπππ ππππ ",
"π &πππππ 865",
"π½π π΅ππ",
"π·ππ π π΄πππππ",
"π±πππ ππ πΌππππΌπππ",
"ππππππ π²ππππ : πΌπ.πππππππ"
}, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
if ZENGA == nil then
else
if ZENGA[1] == true then
black()
end
if ZENGA[2] == true then
night()
end
if ZENGA[3] == true then
view()
end
if ZENGA[4] == true then
wcharm()
end
if ZENGA[5] == true then
nf()
end
if ZENGA[6] == true then
hx()
end
if ZENGA[7] == true then
main()
end
end
WHOAMI = -1
end

function black()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π±πππππππ’"
local Searching = {
{1028443341, 0x0},
{2139095039, -0x4},
{0, -0x8},
}
local Edit = {
{1120403456, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function night()
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="π½ππππ πΌπππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{0, 0x32D2D20},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function view()
if gg.versionCode == "15100" or "15152" then
FEV=gg.prompt({"ΡΡlΡct rΞ±ngΡ : [200;700]"},{230},{"number"})
libBase(0x3C224E0,16,FEV[1], 'Γ­pΞ±d vΓ­Ρw')
libBase(0x3C224E0,16,FEV[1], 'Ιͺα΄α΄α΄ α΄ Ιͺα΄α΄‘ α΄α΄α΄Ιͺα΄ α΄α΄α΄α΄')
gg.toast(TOAST)
end end

------------------------------------------------------------------------------------------
function wcharm()
ZENWC = gg.prompt({
"ππππ ππππππππππ 865",
"π²ππππ ππππππ ",
"π²ππππ πππ",
"π²ππππ πΆππππ",
"π²ππππ πΏπππππ",
"π±πππ ππ πΌππππΌπππ",
"ππππππ π²ππππ : πΌπ.πππππππ"
}, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
if ZENWC == nil then
else
if ZENWC[1] == true then
wall()
end
if ZENWC[2] == true then
charm1()
end
if ZENWC[3] == true then
charm2()
end
if ZENWC[4] == true then
charm3()
end
if ZENWC[5] == true then
charm4()
end
if ZENWC[6] == true then
main()
end
end
WHOAMI = -1
end

function wall()
gg.clearResults()
gg.searchNumber("2.25000238419;2;1.6623038e-19:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.getResults(4)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("B30", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(667478)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(TOAST)
end

function charm1()
gg.clearResults()
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
local t = gg.getResults(88, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "6"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end

function charm2()
gg.clearResults()
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
local t = gg.getResults(88, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "7"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end

function charm3()
gg.clearResults()
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
local t = gg.getResults(88, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "56"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end

function charm4()
gg.clearResults()
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
local t = gg.getResults(88, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "71"
		v.freeze = false
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end
------------------------------------------------------------------------------------------
function nf()
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="ππππππ π΅ππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{0, 0x30E63D8},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π½π πΆππππ"
local Searching = {
{1634100548, 0x0},
{1601465461, 0x4},
{1952533855, 0x8},
{1634300517, 0xC},
{1886930284, 0x10},
{1936942450, 0x14},
{1282305897, 0x18},
{1935961697, 0x1C},
{1701863779, 0x20},
{1935766087, 0x24},
{1953845107, 0x28},
{7632240, 0x2C},
}
local Edit = {
{0, 0x24},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function hx()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π π·ππ π΄πππππ"
local Searching = {
{1110966272, 0x0},
{1092616192, -0x4},
}
local Edit = {
{1148829696, -0x4},
}
SearchWrite(Searching, Edit, dataType)
end
------------------------------------------------------------------------------------------
function B()
gg.setVisible(false)
ZENBA = gg.prompt({
	"π²πππππππ π΅ππππ π1"..CFlash1,
"π²πππππππ π΅ππππ π2 "..CFlash2,
"π²πππππππ π΅ππππ π3"..CFlash3,
"π΅ππ‘ πππππ & π³πππππ",
"πΌπππππ π΅ππππ"..MFlash,
"πΏπππππππππ π·πππ π°πππππ",
"π»πππ π·πππ",
"πππ πππππ",
"π°ππππππππ",
"π±πππ ππ πΌππππΌπππ",
"ππππππ π²ππππ : πΌπ.πππππππ"
}, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
if ZENBA == nil then
else
if ZENBA[1] == true then
CF1()
end
if ZENBA[2] == true then
CF2()
end
if ZENBA[3] == true then
CF3()
end
if ZENBA[4] == true then
FSD()
end
if ZENBA[5] == true then
MF()
end
if ZENBA[6] == true then
PHA()
end
if ZENBA[7] == true then
LH()
end
if ZENBA[8] == true then
SS()
end
if ZENBA[9] == true then
AS()
end
if ZENBA[10] == true then
main()
end
end
WHOAMI = -1
end

function CF1()
AMOO = gg.alert("π΅πππ πΏππππππππ", "γ πΎπβ γ", "γ πΎππβ γ")
if AMOO == 1 then
on()
end
if AMOO == 2 then
off()
end
end


function on()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,477,699,789", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("π΅πππ πΏππππππππ ππ")
end
----------------------------------------------------------------------------------------

function off()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,414,147,695", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("π΅πππ πΏππππππππ πΎππ")
end


function CF2()
if CFlash2 == off then
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π΅ππππ"
local Searching = {
{1118830592, 0x0},
{1114636288, 0x4},
{1112014848, 0x8},
}
local Edit = {
{-1031798784, 0x4},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="π΅ππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{0, 0x146AC28},
{1048240456, 0x3C6F640},
{42, 0x3C4CC84},
{42, 0x3C606C0},
{42, 0x416DEAC},
}
SearchWrite(Searching, Edit, dataType)
CFlash2 = on
else
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π΅ππππ"
local Searching = {
{1118830592, 0x0},
{-1031798784, 0x4},
{1112014848, 0x8},
}
local Edit = {
{1114636288, 0x4},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="π΅ππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{-308344155, 0x146AC28},
{897988541, 0x3C6F640},
{-308868585, 0x3C4CC84},
{-308868585, 0x3C606C0},
{-308868585, 0x416DEAC},
}
SearchWrite(Searching, Edit, dataType)
CFlash2 = off
end end

function CF3()
if CFlash3 == off then
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π΅ππππ"
local Searching = {
{1118830592, 0x0},
{1114636288, 0x4},
{1112014848, 0x8},
}
local Edit = {
{-1031798784, 0x4},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="π΅ππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{0, 0x146AC28},
{1048240456, 0x3C6F640},
{-291501567, 0x3C4CC9C},
{-291501567, 0x3C606D4},
}
SearchWrite(Searching, Edit, dataType)
CFlash3 = on
else
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π΅πππ??"
local Searching = {
{1118830592, 0x0},
{-1031798784, 0x4},
{1112014848, 0x8},
}
local Edit = {
{1114636288, 0x4},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="π΅ππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{-308344155, 0x146AC28},
{897988541, 0x3C6F640},
{-299890175, 0x3C4CC9C},
{-299890175, 0x3C606D4},
}
SearchWrite(Searching, Edit, dataType)
CFlash3 = off
end end


function FSD()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("50000~100000;0;1;5D~100D::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("50000~100000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("37401", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.toast("π΅ππ‘ π³πππππ") 
end


function MF()
if MFlash == off then
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΒ’ΡΟ ΠΟΡΡβ"
local Searching = {
{973279855, 0x0},
{1053609165, 0x4},
{1101004800, -0x4},
{953267991, -0x8},
{1065353216, -0xC},
}
local Edit = {
{1065940419, -0xC},
}
SearchWrite(Searching, Edit, dataType)
MFlash = on
else
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΒ’ΡΟ ΠΟΡΡβ"
local Searching = {
{973279855, 0x0},
{1053609165, 0x4},
{1101004800, -0x4},
{953267991, -0x8},
{1065940419, -0xC},
}
local Edit = {
{1065353216, -0xC},
}
SearchWrite(Searching, Edit, dataType)
MFlash = on
end end


function PHA()
gg.setRanges(gg.REGION_CODE_APP)
local dataType = 4
local Name ="πΏπππππππππ π·πππ π°πππππ"
local Searching = {
{1179403647, 0x0},
{65793, 0x4},
{2621443, 0x10},
{52, 0x1C},
{121447972, 0x20},
}
local Edit = {
{2046820353, 0x1123E48},
{2046820353, 0x1136D98},
{0, 0x287D210},
}
SearchWrite(Searching, Edit, dataType)
end

function LH()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="π»πππ π·πππ"
local Searching = {
{1102851477, 0x0},
{963608576, 0x4},
{1002934272, 0x8},
}
local Edit = {
{1120403456, 0x0},
{1128792064, 0x4},
}
SearchWrite(Searching, Edit, dataType)
end

function SS()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="πππ πππππ"
local Searching = {
{1100159584, 0x0},
{1057613432, 0x4},
{-1067776160, 0x8},
{654311425, 0xC},
}
local Edit = {
{1124240064, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end

function AS()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B583C0 
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x14EC4F4
setvalue(so+py,16,0)
gg.clearResults()
end

function OCS()
Skin = gg.multiChoice({
"β² GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½ Ο-ΠΟΞΉΡ β³",
"β² ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ Ο-ΠΟΞΉΡ β³",
"β² Ξ‘ΟΡΡΞΉβΟΠΈ Ο-ΠΟΞΉΡ β³",
"β² UΞ±z β³",
"β² ΠΞΉΠΊΡ β³",
"β² DΞ±Β’ΞΉΞ± β³",
"β² ΠΟggΡ β³",
"β² ΠCβΞ±ΡΡΠΈ β³",
"β² ΠΡβΠΌΡΡ β³",
"β² ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ β³",
"β©RΞ΅ΡΟΡΞ·\nπ [ππππ πΌπππ]",
}, nil, (os.date("ππππππ π²ππππ : πΌπ.πππππππ\n \nπ½ππ  @ %H`%M[%h%d] ")))
if Skin == nil then
else
if Skin[1] == true then
GoldenPharaoh()
end
if Skin[2] == true then
BloodRaven()
end
if Skin[3] == true then
Poseidon()
end
if Skin[4] == true then
Uaz()
end
if Skin[5] == true then
Bike()
end
if Skin[6] == true then
Dacia()
end
if Skin[7] == true then
Buggy()
end
if Skin[8] == true then
MCLaren()
end
if Skin[9] == true then
Helmet()
end
if Skin[10] == true then
MultipleWeapon()
end
if Skin[11] == true then
main()
end
end
ChannelFairly = -1
end

function GoldenPharaoh()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{1400129, 0x0},
{519, 0x4},
}
local Edit = {
{1405628, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{501001, 0x0},
{5, 0x4},
{501, 0x8},
{501001, 0xC},
}
local Edit = {
{1501001174, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{501002, 0x0},
{5, 0x4},
{501, 0x8},
{501002, 0xC},
}
local Edit = {
{1501002174, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{501003, 0x0},
{5, 0x4},
{501, 0x8},
{501003, 0xC},
}
local Edit = {
{1501003174, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{501004, 0x0},
{5, 0x4},
{501, 0x8},
{501004, 0xC},
}
local Edit = {
{1501001174, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{501005, 0x0},
{5, 0x4},
{501, 0x8},
{501005, 0xC},
}
local Edit = {
{1501002174, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{501006, 0x0},
{5, 0x4},
{501, 0x8},
{501006, 0xC},
}
local Edit = {
{1501003174, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502001, 0x0},
{5, 0x4},
{502, 0x8},
{502001, 0xC},
}
local Edit = {
{1402578, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502002, 0x0},
{5, 0x4},
{502, 0x8},
{502002, 0xC},
}
local Edit = {
{1402578, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502003, 0x0},
{5, 0x4},
{502, 0x8},
{502003, 0xC},
}
local Edit = {
{1402578, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502004, 0x0},
{5, 0x4},
{502, 0x8},
{502004, 0xC},
}
local Edit = {
{1402578, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502005, 0x0},
{5, 0x4},
{502, 0x8},
{502005, 0xC},
}
local Edit = {
{1402578, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502006, 0x0},
{5, 0x4},
{502, 0x8},
{502006, 0xC},
}
local Edit = {
{1402578, 0xC},
}
SearchWrite(Searching, Edit, dataType)
end

function BloodRaven()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{1400129, 0x0},
{519, 0x4},
}
local Edit = {
{1405870, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{501001, 0x0},
{5, 0x4},
{501, 0x8},
{501001, 0xC},
}
local Edit = {
{1501001220, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{501002, 0x0},
{5, 0x4},
{501, 0x8},
{501002, 0xC},
}
local Edit = {
{1501002220, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{501003, 0x0},
{5, 0x4},
{501, 0x8},
{501003, 0xC},
}
local Edit = {
{1501003220, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{501004, 0x0},
{5, 0x4},
{501, 0x8},
{501004, 0xC},
}
local Edit = {
{1501001220, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{501005, 0x0},
{5, 0x4},
{501, 0x8},
{501005, 0xC},
}
local Edit = {
{1501002220, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{501006, 0x0},
{5, 0x4},
{501, 0x8},
{501006, 0xC},
}
local Edit = {
{1501003220, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{502001, 0x0},
{5, 0x4},
{502, 0x8},
{502001, 0xC},
}
local Edit = {
{1402657, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{502002, 0x0},
{5, 0x4},
{502, 0x8},
{502002, 0xC},
}
local Edit = {
{1402657, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{502003, 0x0},
{5, 0x4},
{502, 0x8},
{502003, 0xC},
}
local Edit = {
{1402657, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{502004, 0x0},
{5, 0x4},
{502, 0x8},
{502004, 0xC},
}
local Edit = {
{1402657, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{502005, 0x0},
{5, 0x4},
{502, 0x8},
{502005, 0xC},
}
local Edit = {
{1402657, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠβΟΟβ Π―Ξ±Ξ½ΡΠΈ"
local Searching = {
{502006, 0x0},
{5, 0x4},
{502, 0x8},
{502006, 0xC},
}
local Edit = {
{1402657, 0xC},
}
SearchWrite(Searching, Edit, dataType)
end

function Poseidon()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{1400129, 0x0},
{519, 0x4},
}
local Edit = {
{1405983, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{501001, 0x0},
{5, 0x4},
{501, 0x8},
{501001, 0xC},
}
local Edit = {
{1501001265, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{501002, 0x0},
{5, 0x4},
{501, 0x8},
{501002, 0xC},
}
local Edit = {
{1501002265, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{501003, 0x0},
{5, 0x4},
{501, 0x8},
{501003, 0xC},
}
local Edit = {
{1501003265, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{501004, 0x0},
{5, 0x4},
{501, 0x8},
{501004, 0xC},
}
local Edit = {
{1501001265, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{501005, 0x0},
{5, 0x4},
{501, 0x8},
{501005, 0xC},
}
local Edit = {
{1501002265, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{501006, 0x0},
{5, 0x4},
{501, 0x8},
{501006, 0xC},
}
local Edit = {
{1501003265, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{502001, 0x0},
{5, 0x4},
{502, 0x8},
{502001, 0xC},
}
local Edit = {
{1402874, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{502002, 0x0},
{5, 0x4},
{502, 0x8},
{502002, 0xC},
}
local Edit = {
{1402874, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{502003, 0x0},
{5, 0x4},
{502, 0x8},
{502003, 0xC},
}
local Edit = {
{1402874, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{502004, 0x0},
{5, 0x4},
{502, 0x8},
{502004, 0xC},
}
local Edit = {
{1402874, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{502005, 0x0},
{5, 0x4},
{502, 0x8},
{502005, 0xC},
}
local Edit = {
{1402874, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="Ξ‘ΟΡΡΞΉβΟΠΈ"
local Searching = {
{502006, 0x0},
{5, 0x4},
{502, 0x8},
{502006, 0xC},
}
local Edit = {
{1402874, 0xC},
}
SearchWrite(Searching, Edit, dataType)
end

function Uaz()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1908001, 0x0},
{908, -0x4},
}
local Edit = {
{1908013, 0x0}, -- 1908032 Godzilla | 1908056 Max | 1908013 Detective
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1908002, 0x0},
{908, -0x4},
}
local Edit = {
{1908013, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1908003, 0x0},
{908, -0x4},
}
local Edit = {
{1908013, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1909001, 0x0},
{909, -0x4},
}
local Edit = {
{1909019, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1909002, 0x0},
{909, -0x4},
}
local Edit = {
{1909019, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1909003, 0x0},
{909, -0x4},
}
local Edit = {
{1909019, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1910001, 0x0},
{910, -0x4},
}
local Edit = {
{1910013, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1910002, 0x0},
{910, -0x4},
}
local Edit = {
{1910013, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="UΞ±z"
local Searching = {
{1910003, 0x0},
{910, -0x4},
}
local Edit = {
{1910013, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end

function Bike()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΠΊΡ"
local Searching = {
{1901001, 0x0},
{901, -0x4},
}
local Edit = {
{1901024, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΠΊΡ"
local Searching = {
{1901002, 0x0},
{901, -0x4},
}
local Edit = {
{1901024, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΠΊΡ"
local Searching = {
{1901003, 0x0},
{901, -0x4},
}
local Edit = {
{1901024, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΠΊΡ"
local Searching = {
{1902001, 0x0},
{902, -0x4},
}
local Edit = {
{1902011, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΠΊΡ"
local Searching = {
{1902002, 0x0},
{902, -0x4},
}
local Edit = {
{1902011, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΞΉΠΊΡ"
local Searching = {
{1902003, 0x0},
{902, -0x4},
}
local Edit = {
{1902011, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end

function Dacia()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="DΞ±Β’ΞΉΞ±"
local Searching = {
{1903001, 0x0},
{903, -0x4},
}
local Edit = {
{1903071, 0x0}, -- { 1903071 : Tesla Roadster | 1903023 : Red Shark }
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="DΞ±Β’ΞΉΞ±"
local Searching = {
{1903002, 0x0},
{903, -0x4},
}
local Edit = {
{1903071, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="DΞ±Β’ΞΉΞ±"
local Searching = {
{1903003, 0x0},
{903, -0x4},
}
local Edit = {
{1903071, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="DΞ±Β’ΞΉΞ±"
local Searching = {
{1903004, 0x0},
{903, -0x4},
}
local Edit = {
{1903071, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end

function Buggy()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟggΡ"
local Searching = {
{1907001, 0x0},
{907, -0x4},
}
local Edit = {
{1907028, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟggΡ"
local Searching = {
{1907002, 0x0},
{907, -0x4},
}
local Edit = {
{1907028, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟggΡ"
local Searching = {
{1907003, 0x0},
{907, -0x4},
}
local Edit = {
{1907028, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end

function MCLaren()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠCβΞ±ΡΡΠΈ"
local Searching = {
{1961001, 0x0},
{961, -0x4},
}
local Edit = {
{1961014, 0x0}, -- { 1961015 : MCLaren Aurora | 1961013 : MCLaren Light Golden | 1961014 : MCLaren Black Golden }
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠCβΞ±ΡΡΠΈ"
local Searching = {
{1961002, 0x0},
{961, -0x4},
}
local Edit = {
{1961014, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠCβΞ±ΡΡΠΈ"
local Searching = {
{1961003, 0x0},
{961, -0x4},
}
local Edit = {
{1961014, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end

function Helmet()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502001, 0x0},
{5, 0x4},
{502, 0x8},
{502001, 0xC},
}
local Edit = {
{1502001098, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502002, 0x0},
{5, 0x4},
{502, 0x8},
{502002, 0xC},
}
local Edit = {
{1502002098, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502003, 0x0},
{5, 0x4},
{502, 0x8},
{502003, 0xC},
}
local Edit = {
{1502003098, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502004, 0x0},
{5, 0x4},
{502, 0x8},
{502004, 0xC},
}
local Edit = {
{1502001098, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502005, 0x0},
{5, 0x4},
{502, 0x8},
{502005, 0xC},
}
local Edit = {
{1502002098, 0xC},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="GΟββΡΠΈ Ξ‘Π½Ξ±ΡΞ±ΟΠ½"
local Searching = {
{502006, 0x0},
{5, 0x4},
{502, 0x8},
{502006, 0xC},
}
local Edit = {
{1502003098, 0xC},
}
SearchWrite(Searching, Edit, dataType)
end

function MultipleWeapon()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10100100, 0x0},
{10100100, 0x0},
}
local Edit = {
{1101001089, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10100200, 0x0},
{10100200, 0x0},
}
local Edit = {
{1101002056, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10100300, 0x0},
{10100300, 0x0},
}
local Edit = {
{1101003057, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10100400, 0x0},
{10100400, 0x0},
}
local Edit = {
{1101004062, 0x0}, -- { M4 The Fool : 1101004062 | M4 Glacier : 1101004046 }
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10100500, 0x0},
{10100500, 0x0},
}
local Edit = {
{1101005002, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10100600, 0x0},
{10100600, 0x0},
}
local Edit = {
{1101006007, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10200100, 0x0},
{10200100, 0x0},
}
local Edit = {
{1102001028, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10200200, 0x0},
{10200200, 0x0},
}
local Edit = {
{1102002053, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10200300, 0x0},
{10200300, 0x0},
}
local Edit = {
{1102003031, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10300100, 0x0},
{10300100, 0x0},
}
local Edit = {
{1103001079, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10300200, 0x0},
{10300200, 0x0},
}
local Edit = {
{1103002030, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10500100, 0x0},
{10500100, 0x0},
}
local Edit = {
{1105001020, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10800400, 0x0},
{10800400, 0x0},
}
local Edit = {
{1108004092, 0x0},
}
SearchWrite(Searching, Edit, dataType)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = 4
local Name ="ΠΟβΡΞΉΟβΡ Ξ©ΡΞ±ΟΟΠΈ"
local Searching = {
{10300300, 0x0},
{10300300, 0x0},
}
local Edit = {
{1103003022, 0x0},
}
SearchWrite(Searching, Edit, dataType)
end

------------------------------------------------------------------------------------------
function LO()
ZENITSU = gg.alert(os.date(MMENU), "β¦οΈ π»πππΎππ")
if NEZUKO == nil then end
if NEZUKO == 1 then print(MMENU) return os.exit() end
os.exit()
end
while true do
if gg.isVisible(true) then
 WHOAMI = 1
 gg.setVisible(false)
end
if WHOAMI == 1 then
 main()
end
end





