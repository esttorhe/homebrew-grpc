 class GrpcSwift < Formula
  desc "The Swift gRPC implementation. HTTP/2 based RPC"
  homepage "https://grpc.io"
  url "https://github.com/grpc/grpc-swift.git", :tag => "0.6.0", :revision => "dca553544209d45ccf3ef782bd0371fda63f1006"

  def install
    system("swift build --disable-sandbox -Xcc -ISources/BoringSSL/include -Xlinker -lz")
    bin.install ".build/debug/protoc-gen-swiftgrpc"
  end 
end
