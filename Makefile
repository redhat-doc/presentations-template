SUBDIRS=test-presentation

all:
	@for dir in $(SUBDIRS); do \
		make -C $$dir; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		make -C $$dir clean; \
	done

clobber:
	@for dir in $(SUBDIRS); do \
		make -C $$dir clobber; \
	done

test:
	@for dir in $(SUBDIRS); do \
		make -C $$dir test; \
	done

.PHONY: all clean clobber test
