class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795536036-g7f1841"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795536036-g7f1841/amp-darwin-arm64"
      sha256 "6f8f5dc60c42d04bf7f769583b053d430380b930f78bf8dbe6166d4c7de99a6f"
    else
      url "https://static.ampcode.com/cli/0.0.1795536036-g7f1841/amp-darwin-x64"
      sha256 "7d531330239edf35990e580b84bb2b1134363f021583f76ba5ffbb5ce5af1675"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795536036-g7f1841/amp-linux-arm64"
      sha256 "996a54f8631978ebe5e150719adebb004d4a9390356e50960e9ef8607e5f006f"
    else
      url "https://static.ampcode.com/cli/0.0.1795536036-g7f1841/amp-linux-x64"
      sha256 "594056a03d7f698331098e37cb145acccf717a11c08a8c9001c6e7c3af9dc411"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
