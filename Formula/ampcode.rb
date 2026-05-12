class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778617350-g19dbc6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778617350-g19dbc6/amp-darwin-arm64"
      sha256 "0e1774993a647e8e96d4878bbfd54d25094423b7c5f3d2035be2f5b7403d1286"
    else
      url "https://static.ampcode.com/cli/0.0.1778617350-g19dbc6/amp-darwin-x64"
      sha256 "a57fb1d056513d2a07c684de3e48de6871eb6ae5ca7fc4db6936147386d1cbda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778617350-g19dbc6/amp-linux-arm64"
      sha256 "990507e6137bc23c9f317fcfc0f39343bb2d304bdcdd7367654b86a53c3a0e53"
    else
      url "https://static.ampcode.com/cli/0.0.1778617350-g19dbc6/amp-linux-x64"
      sha256 "e95ed19873c88937e104c2987625eac33ab33f68168392abbc53999e9fa998bf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
