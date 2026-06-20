class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781951034-g2385c0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781951034-g2385c0/amp-darwin-arm64"
      sha256 "02ae5addb9d76528c69b6cff32875a41f201f20cb06ebdfa37fc473dd36eba5c"
    else
      url "https://static.ampcode.com/cli/0.0.1781951034-g2385c0/amp-darwin-x64"
      sha256 "178e4bfb35b8a4a908b2988b2ec637d69018573cab99602b4dc69b979e12134b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781951034-g2385c0/amp-linux-arm64"
      sha256 "46de33083d53b357109c17ce536d3e21c7b1405aa35c7e43f0ee28bfca642005"
    else
      url "https://static.ampcode.com/cli/0.0.1781951034-g2385c0/amp-linux-x64"
      sha256 "b7c15ef251cdc82629a865d5c4948648c578b64b8383b7118b97122ea70d2b84"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
