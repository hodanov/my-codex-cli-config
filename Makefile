AGENTS_SRC := $(PWD)/agents.xml
AGENTS_DEST := $(HOME)/.codex/AGENTS.md

.PHONY: codex-link
codex-link:
	@ln -sf "$(AGENTS_SRC)" "$(AGENTS_DEST)"
	@echo "Linked $(AGENTS_DEST) -> $(AGENTS_SRC)"

.PHONY: codex-unlink
codex-unlink:
	@if [ -L "$(AGENTS_DEST)" ]; then \
		rm -f "$(AGENTS_DEST)"; \
		echo "Removed symlink $(AGENTS_DEST)"; \
	else \
		echo "$(AGENTS_DEST) is not a symlink or does not exist."; \
	fi

