.DEFAULT_GOAL := all

all:
	@echo "You know, there are many people in the country today who,"
	@echo "through no fault of their own, are sane."
	@echo "Some of them were born sane."
	@echo "Some of them became sane later in their lives!"

.PHONY: ctf1 ctf2
ctf1:
	@( \
		cd ctf1 && \
		./deploy.sh \
	)

ctf2:
	@( \
		cd ctf2 && \
		./deploy.sh \
	)
