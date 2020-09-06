
#
# Checks for required tooling.
#

ifeq ($(RM),)
$(error Could not resolve `rm`. Please check your environment)
endif
ifeq ($(CP),)
$(error Could not resolve `cp`. Please check your environment)
endif
ifeq ($(LN),)
$(error Could not resolve `ln`. Please check your environment)
endif
ifeq ($(GIT),)
ifeq ($(PLATFORM),darwin)
$(error Could not resolve `git`. Please install Xcode tools (`sudo xcode-select --install`))
else
$(error Could not resolve `git`. Please check your environment)
endif
endif
ifeq ($(TAR),)
$(error Could not resolve `tar`. Please check your environment)
endif
ifeq ($(GREP),)
$(error Could not resolve `grep`. Please check your environment)
endif
ifeq ($(CURL),)
$(error Could not resolve `curl`. Please check your environment)
endif
ifeq ($(MKDIR),)
$(error Could not resolve `mkdir`. Please check your environment)
endif
ifeq ($(CHMOD),)
$(error Could not resolve `chmod`. Please check your environment)
endif
ifeq ($(PYTHON),)
$(error Could not resolve `python3`. PLease check your environment)
endif
ifeq ($(VIRTUALENV),)
$(error Could not resolve `virtualenv`. Please run: `pip3 install virtualenv`)
endif
