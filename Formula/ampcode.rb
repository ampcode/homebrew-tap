class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778084602-gfd096d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778084602-gfd096d/amp-darwin-arm64"
      sha256 "503958c53ae7353153512ece9293f9b5696b1c02247b2ea42cd5ff11b9eb873f"
    else
      url "https://static.ampcode.com/cli/0.0.1778084602-gfd096d/amp-darwin-x64"
      sha256 "61bd1932fab2032426c800968e38d28ebeab945ab4e5437bfbe524f635a3c9b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778084602-gfd096d/amp-linux-arm64"
      sha256 "fa6344041b54974158b92eaaa3dab8c51ff3ec5e10634241c9721ec80246f8ab"
    else
      url "https://static.ampcode.com/cli/0.0.1778084602-gfd096d/amp-linux-x64"
      sha256 "6a49ec8ff64b6666aed11a617ba2ac7b1369ba39606f9810c4930652f4ef3587"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
