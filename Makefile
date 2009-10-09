-include ../../Make.config

all: i686 ppc db2 mipsel ipkg

i686:
	$(MAKE) -C build/i686
	
ppc: 	
	$(MAKE) -C build/ppc

db2: 	
	$(MAKE) -C build/db2

mipsel: 	
	$(MAKE) -C build/mipsel
	
ipkg:   mipsel
	$(MAKE) -C pkgs ipkg
    	
	
clean:
	$(MAKE) -C build/i686 clean
	$(MAKE) -C build/ppc clean
	$(MAKE) -C build/db2 clean
	$(MAKE) -C build/mipsel clean
	$(MAKE) -C build/pkgs clean
