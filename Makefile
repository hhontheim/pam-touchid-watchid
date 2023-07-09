.PHONY: all clean install install_pam touchid watchid

all: touchid watchid

clean: clean_touchid clean_watchid

install: install_touchid install_watchid

install_pam: install_pam_touchid install_pam_watchid

# touchid
touchid:
	$(MAKE) -C touchid all

clean_touchid:
	$(MAKE) -C touchid clean

install_touchid:
	$(MAKE) -C touchid install

install_pam_touchid:
	$(MAKE) -C touchid install_pam

# watchid
watchid:
	$(MAKE) -C watchid all

clean_watchid:
	$(MAKE) -C watchid clean

install_watchid:
	$(MAKE) -C watchid install

install_pam_watchid:
	$(MAKE) -C watchid install_pam
