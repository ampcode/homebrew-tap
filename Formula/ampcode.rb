class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781356606-gccbb11"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781356606-gccbb11/amp-darwin-arm64"
      sha256 "54f69792b710d8890315d04d09c916d9a9981e308de7889ff0da8d5eb046ae3d"
    else
      url "https://static.ampcode.com/cli/0.0.1781356606-gccbb11/amp-darwin-x64"
      sha256 "f5c51dd3cc545ac2a53136eddbb0912927267657eedec1cc489da13bbdc3edb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781356606-gccbb11/amp-linux-arm64"
      sha256 "b00b051d04dc129ecfa0965516690a9dabefc03a9b3bcfc964393e3fa26e9866"
    else
      url "https://static.ampcode.com/cli/0.0.1781356606-gccbb11/amp-linux-x64"
      sha256 "3b1c6678a8fa2d26aecf6f645ab0543474b32739260bc1a8c432a6d509049474"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
