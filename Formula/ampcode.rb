class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775215534-g002bad"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775215534-g002bad/amp-darwin-arm64"
      sha256 "2583a19d57cf1b48475aff1e9a8082fd11a2301d5b163d0b057662e44812e4af"
    else
      url "https://static.ampcode.com/cli/0.0.1775215534-g002bad/amp-darwin-x64"
      sha256 "9cda3dbe7c2f27b6f86f7222020464d89333e4812f888cfee2a6c65b83d1adf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775215534-g002bad/amp-linux-arm64"
      sha256 "f71e58de9db81b0e42137fdf6e48730cb5498c3e2db6427d8c259cfe1be00cc8"
    else
      url "https://static.ampcode.com/cli/0.0.1775215534-g002bad/amp-linux-x64"
      sha256 "b8cef2e3693c10fb25ac51196dafb2a0129478aca818a321d633f837e72ead7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
