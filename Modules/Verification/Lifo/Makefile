# directory where scripts are located and temp file
SD=../../../Cew

# code beautifier 
INDENT=cat

bats: tb.cl
	gcl -f tb.cl

tb.cl: tb.cew $(SD)/bin/cew.cl
	@rm -f $(SD)/tmp/tb.num
	@rm -f ./tb.cl
	@awk -f $(SD)/bin/addLineNums.awk tb.cew > $(SD)/tmp/tb.num
	@m4 -I $(SD)/bin $(SD)/tmp/tb.num  | $(INDENT) > tb.cl
