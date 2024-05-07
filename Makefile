TEST_SCRIPT = script.js
REPORT_FILE = report.json

test:
	k6 run $(TEST_SCRIPT) --out json=$(REPORT_FILE)

clean:
	rm -f $(REPORT_FILE) 

help:
	@echo "Usage: make <target>"
	@echo "Targets:"
	@echo "  test       Run the performance test"
	@echo "  clean      Remove report files"

.PHONY: test report html-report clean help

.DEFAULT_GOAL = help
