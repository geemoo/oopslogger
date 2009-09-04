# Name of the project 
PROJNAME := oopslog

# We pull in all schematic pages by default.. 
PAGES := $(shell ls -1 *_p*.sch)


notarget:
	@echo "Targets:"
	@echo ""
	@echo "${MAKE} sch            Opens the schematic"
#	@echo "${MAKE} attrib         Opens the attribute editor"
	@echo "${MAKE} renum          Numbers reference designators"
#	@echo "${MAKE} update         Runs gschupdate against the schematic"
#	@echo "${MAKE} bom            Creates a bom, 1 line per refdes"
#	@echo "${MAKE} bom2           Creates a bom, 1 line per component type"
	@echo "${MAKE} drc            Runs a DRC against the schematic"
#	@echo "${MAKE} netlist        Generates a gEDA netlist"
	@echo "${MAKE} genpcb         Generates/updates the PCB file (options set in .proj file)"
	@echo "${MAKE} pcb            Opens the pcb for editting"
#	@echo "${MAKE} net-tango      Generates a tango netlist"
	@echo "${MAKE} printpdf       Creates a PDF of the schematics"

all: 
	@echo "This doesn't make sense..  you can't make all."
	${MAKE} notarget

sch: $(PAGES)
	gschem $(PAGES)

attrib: $(PAGES)
	gattrib $(PAGES)

renum: $(PAGES)
	refdes_renum --force $(PAGES)

#update: $(PAGES)
#	gschupdate $(PAGES)

bom: $(PAGES) 
	gnetlist -g bom -o $(PROJNAME)_bom.csv $(PAGES)

bom2: $(PAGES)
	gnetlist -g bom2 -o $(PROJNAME)_bom2.csv $(PAGES)

drc: $(PAGES)
	gnetlist -g drc2 -o $(PROJNAME).drc $(PAGES)

#netlist: $(PAGES)
#	gnetlist -g geda -o $(PROJNAME)_geda.net $(PAGES)

genpcb: $(PAGES)
	gsch2pcb -v -d elements -o $(PROJNAME) $(PAGES)

pcb:
	pcb $(PROJNAME).pcb

#net-tango: $(PAGES)
#	gnetlist -g tango -o $(PROJNAME)_tango.net $(PAGES)

pdf: $(PROJNAME).ps
	ps2pdf -dOptimize=true -dUseFlateCompression=true -sPAPERSIZE=a4 $< $(PROJNAME).pdf

$(PROJNAME).ps: printps

printps: $(PAGES)
	rm -f ONEPAGE.ps
	rm -f $(PROJNAME).ps
	for S in $(PAGES); \
	do \
	gschem -q -o ONEPAGE.ps -s/usr/share/gEDA/scheme/print.scm $$S; \
	cat ONEPAGE.ps; done > $(PROJNAME).ps
	rm -f ONEPAGE.ps


# list of all post script files required
PSES := $(PAGES:.sch=.ps)
PSES := $(addprefix $(OBJDIR)/, $(PSES))

# list of all png files required
PNGS := $(addprefix $(OBJDIR)/, $(PAGES:.sch=.png))

# the names of various output files
PDF := $(PROJNAME:=.pdf)
ASC := $(PROJNAME:=.asc)
PS := $(PROJNAME:=.ps)
BOM := $(PROJNAME:=.bom)
DRC := $(PROJNAME:=.drc)

# this uses objdir, so it has to be after include of objdir.mk
# but there has to be a rule (everything) before the included of objdir.mk
# otherwise objdir's rule will be the first one seen (hence the default rule)
everything: obj $(OBJDIR)/$(PDF) $(PNGS) $(OBJDIR)/$(BOM) $(OBJDIR)/$(DRC) $(OBJDIR)/$(ASC)

# this converts a postscript document to pdf
obj/$(PDF) : $(OBJDIR)/$(PDF)
$(OBJDIR)/%.pdf : $(OBJDIR)/%.ps
	ps2pdf -sPAPERSIZE=a4 $< $@

# this makes a postscript for one page of the schematic
$(OBJDIR)/%.ps : %.sch
	gschem -p -o $@ -s $(GEDADIR)/scheme/print.scm $<

# this makes a png for one page of the schematic
$(OBJDIR)/%.png : %.sch
	gschem -p -o $@ -s $(GEDADIR)/scheme/image.scm $<

# this makes a netlist for all files in the schematic
#obj/$(ASC) : $(OBJDIR)/$(ASC)
#$(OBJDIR)/$(ASC) : $(PAGES)
#	gnetlist -g pads -o $@ $^

# this does a DRC check of the schematic
#obj/$(DRC) : $(OBJDIR)/$(DRC)
#$(OBJDIR)/$(DRC) : $(PAGES)
#	gnetlist -g drc2 -o $@.tmp $^
#ifdef $(CONTINUE_ON_DRC_ERROR)
#	@if grep ERROR $@.tmp >/dev/null ; then \
#		echo "Failed DRC test!" ; false ; \
#	fi
#endif
#	mv $@.tmp $@

# this makes a BOM (bill of materials) for all the files in the schematic
obj/$(BOM) : $(OBJDIR)/$(BOM)
$(OBJDIR)/$(BOM) : $(PAGES)
	gnetlist -g bom -o $@ $^

# combine pses to make the complete postscript
obj/$(PS) : $(OBJDIR)/$(PS)
$(OBJDIR)/$(PS): $(PSES)
	cat $^ > $@

clean:
	rm -f $(ASC) $(PDF) $(PS) $(PSES) $(OBJDIR)/*.png $(BOM) $(DRC)
