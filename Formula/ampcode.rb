class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778137469-g337d30"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778137469-g337d30/amp-darwin-arm64"
      sha256 "77d884215f9a29158b94291404ff19eae458082f44a0c544054689a5669c66e4"
    else
      url "https://static.ampcode.com/cli/0.0.1778137469-g337d30/amp-darwin-x64"
      sha256 "4669ee40e1e1e246dd9a048aeb645c2d9dfafbbfa332a254813581ed8c2bf955"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778137469-g337d30/amp-linux-arm64"
      sha256 "cdca5c104888ebb8f90e936804186f997cf82bd28015b1a775d66a720d97c7da"
    else
      url "https://static.ampcode.com/cli/0.0.1778137469-g337d30/amp-linux-x64"
      sha256 "641047c87445e8d2da69418308356279b51b65d6d43029d336d4313ef4da9141"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
