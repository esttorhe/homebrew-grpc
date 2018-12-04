 class GrpcSwift < Formula
  desc "The Swift gRPC implementation. HTTP/2 based RPC"
  homepage "https://grpc.io"
  url "https://github.com/grpc/grpc-swift.git", :revision => "1d422fc31cd08db7d85e4137b5dc7401c050f637"

  def install
    system("swift build --disable-sandbox -Xcc -ISources/BoringSSL/include -Xlinker -lz")
    bin.install ".build/debug/protoc-gen-swiftgrpc"
  end 
end
