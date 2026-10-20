class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792454470-g0a5798"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792454470-g0a5798/amp-darwin-arm64"
      sha256 "787d1c3b48f46065940a21d4c982e57b9b882d4e22e31f2817d35af42669b4ef"
    else
      url "https://static.ampcode.com/cli/0.0.1792454470-g0a5798/amp-darwin-x64"
      sha256 "bd3e1da7b9c35ee97ef53f5251cbd08197982606c8bd6fdb4bfba67a9bc3a1f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792454470-g0a5798/amp-linux-arm64"
      sha256 "0bfe9fe3a796ce07e53f7962bd3b7c5a5c48b7d96ee28e426b4a23223f4ad9d4"
    else
      url "https://static.ampcode.com/cli/0.0.1792454470-g0a5798/amp-linux-x64"
      sha256 "2fc944c6d783730377916646a07400c49b613bbdc63ff6567bbbdb16ccc05e3d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
