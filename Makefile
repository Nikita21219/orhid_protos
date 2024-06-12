PROTO_DIR = medods/api/proto
GO_OUT_DIR = medods/generated/go

gen:
	protoc -I $(PROTO_DIR) $(PROTO_DIR)/medods.proto --go_out=$(GO_OUT_DIR) --go_opt=paths=source_relative --go-grpc_out=./$(GO_OUT_DIR) --go-grpc_opt=paths=source_relative

.PHONY: gen
