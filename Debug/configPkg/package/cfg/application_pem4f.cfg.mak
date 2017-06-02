# invoke SourceDir generated makefile for application.pem4f
application.pem4f: .libraries,application.pem4f
.libraries,application.pem4f: package/cfg/application_pem4f.xdl
	$(MAKE) -f C:\Users\Raphael\workspace_v6_2\Fake_NFC_RTOS_Display/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Raphael\workspace_v6_2\Fake_NFC_RTOS_Display/src/makefile.libs clean

