DIRS	= usbkbd-printdebug usbkbd-scancodemod usbkdb

all : $(DIRS)
	cd usbkbd-printdebug; $(MAKE) $(MFLAGS)
	cd usbkbd-scancodemod; $(MAKE) $(MFLAGS)
	cd usbkdb; $(MAKE) $(MFLAGS)

clean :
	-for d in $(DIRS); do (cd $$d; $(MAKE) clean ); done