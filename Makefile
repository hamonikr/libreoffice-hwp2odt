# Makefile for downloading, extracting, and installing H2Orestart.oxt

PKG_DIR=$(CURDIR)/debian/libreoffice-hwp2odt

# 설정할 디렉토리
DEST_DIR := /usr/lib/libreoffice/share/extensions

PKG_VER := 0.5.7

# 파일 다운로드 URL
DOWNLOAD_URL := https://github.com/ebandal/H2Orestart/releases/download/v$(PKG_VER)/H2Orestart.oxt

# 파일 이름
FILE_NAME := H2Orestart.oxt

all: build download install

build:
	@echo "Prepare Build Directory..."
	@mkdir -p "$(PKG_DIR)/$(DEST_DIR)"

download:
	@echo "Downloading H2Orestart.oxt from GitHub releases..."
	@curl -LO $(DOWNLOAD_URL)

install: build download
	@echo "Extracting $(FILE_NAME)..."
	@unzip -q -d "$(PKG_DIR)$(DEST_DIR)" "$(FILE_NAME)"  

clean:
	@echo "Cleaning up..."
	@rm -rf $(FILE_NAME) $(PKG_DIR)

uninstall: clean