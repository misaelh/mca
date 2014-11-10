import os

#Config parameters:
bench = 'v42'	#Name of bench mark
numberLines = 2 #Number if lines from the ta.log.000 file to be printed

os.system('rm ta.log.*'	)
f = open('pipe_python_test.mm','w')

f.write('''CFG: Quit 0
CFG: Warn 0
CFG: Debug 0 \n''')

clusters = int(raw_input('How many cores may you need: '))

issueWidth = raw_input("IssueWidth: ")
memLoad = raw_input("MemLoad: ")
memStore = raw_input("MemStore: ")
memPft = raw_input("MemPft: ")

alu = raw_input("Alu: ")
memory = raw_input("Memory: ")
mpy = raw_input("Mpy: ")
cpyS = raw_input("CopySrc: ")
cpyD = raw_input("CopyDst: ")

f.write("RES: IssueWidth " + issueWidth + "\n")
f.write("RES: MemLoad " + memLoad + "\n")
f.write("RES: MemStore " + memStore + "\n")
f.write("RES: MemPft " + memPft + "\n\n")

for i in range(clusters):

	f.write("RES: Alu." + str(i) + " " + alu +"\n")
	f.write("RES: Memory." + str(i) + " " + memory +"\n")
	f.write("RES: Mpy." + str(i) + " " + mpy +"\n")
	f.write("RES: CopySrc." + str(i) + " " + cpyS +"\n")
	f.write("RES: CopyDst." + str(i) + " " + cpyD +"\n\n")

f.write('''
DEL: AluR.0 0		
DEL: Alu.0 0 		
DEL: CmpBr.0 1 
DEL: CmpGr.0 0 
DEL: Select.0 0 
DEL: Multiply.0 1 
DEL: Load.0 1 
DEL: LoadLr.0 2
DEL: Store.0 0 		 	
DEL: Pft.0 0 
DEL: CpGrBr.0 1 
DEL: CpBrGr.0 0 
DEL: CpGrLr.0 1 
DEL: CpLrGr.0 0 
DEL: Spill.0 0 
DEL: Restore.0 1 
DEL: RestoreLr.0 2
REG: $r0 62 
REG: $b0 8''')

f.close()

os.system('./tools/vex-3.43/bin/cc -width '+ str(clusters) +' -O4 -o '+ bench + ' -mas_G -ms -fmm=pipe_python_test.mm Powerstone/src/' + bench + '.c')
os.system('./' + bench)

log = open('ta.log.000')
i = numberLines

for line in log:
	print  line
 	if i is 1:
		break
	i -= 1
log.close()

os.system('mv ta.log.000 ' + bench + '_'+ str(clusters)+'_' + str(issueWidth) + '_'+ str(memLoad) + '_'+ str(memStore) + '_'+ str(alu) + '_'+ str(memory) + '_' +str(mpy)+ '_' +str(cpyS) + '_'+ str(cpyD))