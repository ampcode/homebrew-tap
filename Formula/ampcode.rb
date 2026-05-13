class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778704197-g3220d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778704197-g3220d4/amp-darwin-arm64"
      sha256 "05f88eae693fddd0dd2502aee1b39f272c99d2314a7dd3d7ca29efceeff64378"
    else
      url "https://static.ampcode.com/cli/0.0.1778704197-g3220d4/amp-darwin-x64"
      sha256 "162b641a100d34da95ab39ba545b41816ed789db2907d4d0b88bb9db4cdc3c21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778704197-g3220d4/amp-linux-arm64"
      sha256 "fc1be82a244bd8a0df18ada5e501cd98555c7c57a7919438f4caf969fca7b649"
    else
      url "https://static.ampcode.com/cli/0.0.1778704197-g3220d4/amp-linux-x64"
      sha256 "cd70b81fa52bfe16f4526fc94a6ee1a090aeb1e4bfee9b514c205be86fff34cd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
