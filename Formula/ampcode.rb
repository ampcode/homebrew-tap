class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790582746-g4cde8a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790582746-g4cde8a/amp-darwin-arm64"
      sha256 "ff2bf631c8d568c1c02f81d446ee9da95a181b6059609c4356852202f36c5456"
    else
      url "https://static.ampcode.com/cli/0.0.1790582746-g4cde8a/amp-darwin-x64"
      sha256 "6bd313384e32005c7ff6aa9dc7e2f45651c137ae259f0f316a7c58536fb681cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790582746-g4cde8a/amp-linux-arm64"
      sha256 "06ffe6196b7630f3d1e6851b214d8fde30983a719dc4299e242fe8a286a7dbfb"
    else
      url "https://static.ampcode.com/cli/0.0.1790582746-g4cde8a/amp-linux-x64"
      sha256 "49368234526bf11d7a1a8c64ddd9ce6b8df5430b2c6680649577255eb4dee072"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
