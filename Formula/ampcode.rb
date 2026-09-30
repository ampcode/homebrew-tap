class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790757619-gb07e71"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790757619-gb07e71/amp-darwin-arm64"
      sha256 "f67dfac252708c0b45ce447eeadba4bbff5e3847a34914a4d8b795e6e3cfc856"
    else
      url "https://static.ampcode.com/cli/0.0.1790757619-gb07e71/amp-darwin-x64"
      sha256 "73a3d07cc049719e705aa9a1509a9e17dc45dd423350e9e8fc1601f79d870c00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790757619-gb07e71/amp-linux-arm64"
      sha256 "571b529501360174b0d07123b853467ad60e7a33e7364ca031f44e1c05fef32e"
    else
      url "https://static.ampcode.com/cli/0.0.1790757619-gb07e71/amp-linux-x64"
      sha256 "1dd69e1459dfeb3ee870fb41ce952f63a11c2769676f7e2655e50a6678532f05"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
