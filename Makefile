ifeq ($(DEVICE),$(filter $(DEVICE), S922X RK3588))
	obj-m := archr-joypad.o
else ifeq ($(DEVICE),$(filter $(DEVICE), H700 RK3399))
	obj-m := archr-singleadc-joypad.o
else
	obj-m := archr-joypad.o archr-singleadc-joypad.o
endif
