class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778372069-ge0b620"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778372069-ge0b620/amp-darwin-arm64"
      sha256 "b6b947d077c62d1adce69390f6e1ac5430d3505803fc5f433368ec2b327f772a"
    else
      url "https://static.ampcode.com/cli/0.0.1778372069-ge0b620/amp-darwin-x64"
      sha256 "bdfde7d518b1d27a16c425aa3315a556039210aae3d0a470d8070d60d935ce34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778372069-ge0b620/amp-linux-arm64"
      sha256 "d6054f978329aeaa5af875d0d849ca92aab7fc1b645fcb8d6de0b7516e5389e7"
    else
      url "https://static.ampcode.com/cli/0.0.1778372069-ge0b620/amp-linux-x64"
      sha256 "2dfd3a7fb9aa46af7cc48be3c973755e5d1c9e3850ae554cdfa2a9caac72a9e0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
