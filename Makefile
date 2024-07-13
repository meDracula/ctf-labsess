.DEFAULT_GOAL := all

all:
	@echo "Welcome, welcome"

.PHONY: ctf1
ctf1:
	@( \
		cd ctf1 && \
		./deploy.sh \
	)
