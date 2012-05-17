XCODE_TEMPLATE_DIR = ~/Library/Developer/Xcode/Templates
XCODE_FILE_TEMPLATE_DIR = ${XCODE_TEMPLATE_DIR}/File\ Template/
MY_TEMPLATE_DIR = ./Templates/

force:	delete install

delete:
	rm -rf ${XCODE_TEMPLATE_DIR}
install:
	mkdir ${XCODE_TEMPLATE_DIR}
	mkdir ${XCODE_FILE_TEMPLATE_DIR}
	cp -Rf ${MY_TEMPLATE_DIR}* ${XCODE_FILE_TEMPLATE_DIR}

