class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778357489-g5fbfbe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778357489-g5fbfbe/amp-darwin-arm64"
      sha256 "33b70cc382ba54ace855c85209ef31e8d2044d2c98f676291c7a3dbcaa2fcf85"
    else
      url "https://static.ampcode.com/cli/0.0.1778357489-g5fbfbe/amp-darwin-x64"
      sha256 "3910ca21b59b1ae86d21575a256511f781128d14db495de2b75c02b3ac3c2210"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778357489-g5fbfbe/amp-linux-arm64"
      sha256 "ea97921752c8ea52cc3ed6a05037a323b1e7035dbde2aa5c5452946a5bf448a0"
    else
      url "https://static.ampcode.com/cli/0.0.1778357489-g5fbfbe/amp-linux-x64"
      sha256 "7bb3262b88c1ee8bfad57d80d3aa5f87b92968a95c91f2879ea7c342990772b2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
