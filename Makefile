PKG_VER := 0.5.7
FILE_NAME := H2Orestart.oxt

# 파일 다운로드 URL
DOWNLOAD_URL := https://github.com/ebandal/H2Orestart/releases/download/v$(PKG_VER)/H2Orestart.oxt

all: build download install

build:
	@echo "Prepare Build Directory..."
	@mkdir -p usr/lib/libreoffice/share/extensions/H2Orestart.oxt

download:
	@echo "Downloading H2Orestart.oxt from GitHub releases..."
	@curl -LO $(DOWNLOAD_URL)

install: build download
	@echo "Extracting $(FILE_NAME)..."
	@unzip -d usr/lib/libreoffice/share/extensions/H2Orestart.oxt/ "$(FILE_NAME)"

clean:
	@echo "Cleaning up..."
	@rm -rf $(FILE_NAME) usr

uninstall: clean