class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791734437-g42649e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791734437-g42649e/amp-darwin-arm64"
      sha256 "4f99179fffdb9b64c988d595ae4fff1fb988fd0179678f483f72dc59680532cd"
    else
      url "https://static.ampcode.com/cli/0.0.1791734437-g42649e/amp-darwin-x64"
      sha256 "dd94cb7c5c50b706fe01145ce1b1d595c4ed9752d278cdb930c60737870f9b03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791734437-g42649e/amp-linux-arm64"
      sha256 "1633f84c569ac194029de5022072cb116b9423830314b6228c2334da5357c418"
    else
      url "https://static.ampcode.com/cli/0.0.1791734437-g42649e/amp-linux-x64"
      sha256 "fa9000137e3ea2f3399c32ebceb8e058a7567c97236ea541095adce99054f627"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
