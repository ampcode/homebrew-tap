class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781891124-gcdfd75"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781891124-gcdfd75/amp-darwin-arm64"
      sha256 "2a72b87e68f57fe22575d853e40f60f02371d72111da9b347fc0e0660561953f"
    else
      url "https://static.ampcode.com/cli/0.0.1781891124-gcdfd75/amp-darwin-x64"
      sha256 "e22d292a3dbfbee9c52df189bba90917dafd051765c112110946bb94b7029ec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781891124-gcdfd75/amp-linux-arm64"
      sha256 "9d5a76e9bdc7f710cc5d06859e4097fa01ea4b80718e5ae6603fff06cbbcb3f6"
    else
      url "https://static.ampcode.com/cli/0.0.1781891124-gcdfd75/amp-linux-x64"
      sha256 "436a894a5a6fe7361bb2911215d82f59b7a9eebefcf15d7258f51a68fee59d71"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
