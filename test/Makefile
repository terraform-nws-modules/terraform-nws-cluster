TEST_NAME?=TestNwsClusterExample
COMMON?=common.go build_helpers.go valid_helpers.go
TIMEOUT?=3m

show:
	@echo 'make lint - run go init'
	@echo 'make tidy - run go tidy'
	@echo 'make lint - run linter'
	@echo 'make test - run test'

init:
	@go mod init $(TEST_NAME)

tidy: 
	@go mod tidy

lint:
	@golint *.go

priv:
	@go test -v -timeout $(TIMEOUT) $(COMMON) nws_vpc_private_network_test.go

pub:
	@go test -v -timeout $(TIMEOUT) $(COMMON) nws_vpc_public_network_test.go

full:
	@go test -v -timeout $(TIMEOUT) $(COMMON) nws_vpc_full_network_test.go