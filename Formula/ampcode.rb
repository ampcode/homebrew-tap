class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785761938-g468e20"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785761938-g468e20/amp-darwin-arm64"
      sha256 "b4c9ea30807f9ad3b2f2e5c336a14d89d82696df351f5c590dabcde029009b6e"
    else
      url "https://static.ampcode.com/cli/0.0.1785761938-g468e20/amp-darwin-x64"
      sha256 "035d15a5475a12b14d2dcf08c41ac62bc030d0aa978867f57474b9d6f05e8714"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785761938-g468e20/amp-linux-arm64"
      sha256 "26954ada7558c8c860584cae0aeb730d18e17c8fcfdba063e4f921a11f663e2a"
    else
      url "https://static.ampcode.com/cli/0.0.1785761938-g468e20/amp-linux-x64"
      sha256 "ed2b3ea0e220365b15fa10af6c7fb0951c23149435f98acaa2c13bfbab88d5ee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
