class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774590201-g775913"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774590201-g775913/amp-darwin-arm64"
      sha256 "4c4d8f4f084f64b0cffaede214b6608590c7bf72c75c6708fb348213f34cfc74"
    else
      url "https://static.ampcode.com/cli/0.0.1774590201-g775913/amp-darwin-x64"
      sha256 "82225e11352df2453662586a3eb6bcf20e9754b0263ed073e9ab7ff63ba19740"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774590201-g775913/amp-linux-arm64"
      sha256 "0fbe74f1db5314eae26d1c2758c5c9d0ee9b6ca98c864376a49d48ca9ba8cd96"
    else
      url "https://static.ampcode.com/cli/0.0.1774590201-g775913/amp-linux-x64"
      sha256 "9ed3fc30534d133d8973c9ddd96e4809f7fffc523e78c11dbca1f1c25cd8b99c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
