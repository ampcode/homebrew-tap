class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788120033-g8918b7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788120033-g8918b7/amp-darwin-arm64"
      sha256 "8f0c08808f6d5c7f3e844a97027293f8413d0459cb8e59b0ffa197130d0a0f18"
    else
      url "https://static.ampcode.com/cli/0.0.1788120033-g8918b7/amp-darwin-x64"
      sha256 "45f55d0c286d2250f2775e56853774f56ce8602545b139be574180b06e4cdad2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788120033-g8918b7/amp-linux-arm64"
      sha256 "c37839e02ab648ff094377bc636913baf1ecfce08443408eae97036ac2b49873"
    else
      url "https://static.ampcode.com/cli/0.0.1788120033-g8918b7/amp-linux-x64"
      sha256 "3b4f7347659fce4ba903169cbfcf8062a095523d3d7e6fe03913e1b50df8a312"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
