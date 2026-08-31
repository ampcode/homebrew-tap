class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788214426-g044455"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788214426-g044455/amp-darwin-arm64"
      sha256 "eacd48fc9293f04c75a4794c6662f1938b8d157d2cbf9a5a3a1013fd72f6b4a3"
    else
      url "https://static.ampcode.com/cli/0.0.1788214426-g044455/amp-darwin-x64"
      sha256 "527ab03926ab075ccbf36572c67dfeec2ce735d3baec54c6b60f6e18d0fec48c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788214426-g044455/amp-linux-arm64"
      sha256 "f5d0a07ea9eec4988aff86b7c2456b5a2907310c9ccea6ec356c0dcdddff5053"
    else
      url "https://static.ampcode.com/cli/0.0.1788214426-g044455/amp-linux-x64"
      sha256 "1b97e2ff8b7f4c57f889f975b1c6bf1b79f2c197ab5ec5a2976b999e39a0eba9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
