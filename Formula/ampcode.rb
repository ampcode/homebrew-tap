class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786392814-g62eb36"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786392814-g62eb36/amp-darwin-arm64"
      sha256 "6c4959483f6bebcec3a097c061cccc2d69482f69d8493000b055985c49ff80d0"
    else
      url "https://static.ampcode.com/cli/0.0.1786392814-g62eb36/amp-darwin-x64"
      sha256 "8a23a73578c58efe0f6ba662b77031a864b3a6bc3cc908710ecb8fa74432b54c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786392814-g62eb36/amp-linux-arm64"
      sha256 "ba793211b7325be43a2342f40a4072af15eee8402b32e35330403624c16edd77"
    else
      url "https://static.ampcode.com/cli/0.0.1786392814-g62eb36/amp-linux-x64"
      sha256 "2b868e0bf5d1a3ea0221612ffc4471305a9d3c2bcb125183bf6b306d50e3dd76"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
