default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make app'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remote-install'
	@echo
	@echo '	$$ make manjaro-bash-completion-install'
	@echo
	@echo '	$$ make ubuntu-bash-completion-install'
	@echo

.PHONY: help


prepare:
	pamac install bash-completion
.PHONY: prepare


app:
	make -C ./gen/awesomewmrc-get app
.PHONY: app


manjaro-bash-completion-install:
	sudo install -Dm644 ./completion/bash/awesomewmrc-get /usr/local/share/bash-completion/completions/awesomewmrc-get
.PHONY: manjaro-bash-completion-install


ubuntu-bash-completion-install:
	sudo install -Dm644 ./completion/bash/awesomewmrc-get /etc/bash_completion.d/awesomewmrc-get
.PHONY: ubuntu-bash-completion-install


install: app
#	sudo mkdir -p /usr/local/share/bash-completion/completions
	install -Dm755 ./awesomewmrc-get ~/.local/bin/awesomewmrc-get
.PHONY: install


remote-install:
	./remote-install.sh
.PHONY: remote-install
