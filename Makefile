NAME = gocryptfs-ui

all:
	@echo "Type make install|uninstall|check"

install:
	@./$(NAME)-setup -d "$(DESTDIR)" install

uninstall:
	@./$(NAME)-setup -d "$(DESTDIR)" uninstall

check:
	shellcheck $(NAME) $(NAME)-setup
