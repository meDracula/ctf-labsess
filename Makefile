.DEFAULT_GOAL := all

.PHONY: all ctf1 ctf2 ctf1-clean ctf2-clean clean
all:
	@echo "You know, there are many people in the country today who,"
	@echo "through no fault of their own, are sane."
	@echo "Some of them were born sane."
	@echo "Some of them became sane later in their lives!"

clean: ctf1-clean ctf2-clean
	@echo "Clean up done!"

#######
# CTF 1
#######
ctf1:
	@( \
		cd ctf1 && \
		./deploy.sh \
	)

ctf1-clean:
	@( \
		cd ctf1 && \
		./clean.sh \
	)

#######
# CTF 2
#######
ctf2:
	@( \
		cd ctf2 && \
		./deploy.sh \
	)

ctf2-clean:
	@( \
		cd ctf2 && \
		./clean.sh \
	)
