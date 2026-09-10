class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789056048-gbcbe2e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789056048-gbcbe2e/amp-darwin-arm64"
      sha256 "0288e657b48f4f040af617ca9653ef26fc8f880cc760cc0b9a3a40c4cab05ed2"
    else
      url "https://static.ampcode.com/cli/0.0.1789056048-gbcbe2e/amp-darwin-x64"
      sha256 "fa5944f01c96480573b6460de912dde83db45e12b126d8c90bfb1ddcce075016"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789056048-gbcbe2e/amp-linux-arm64"
      sha256 "b107ecfa4a70c7bf0918a3a9932fe7ad837f1bb1676fed5a54cc58d6c3e98fee"
    else
      url "https://static.ampcode.com/cli/0.0.1789056048-gbcbe2e/amp-linux-x64"
      sha256 "f50b98e3a1809c76ab36b4fee7dfe80061aea9a5552db7be9dbb42659dc2a5a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
