class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774956860-g4cca6e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774956860-g4cca6e/amp-darwin-arm64"
      sha256 "53617a9e0eadf412efb5b2716bae486cdd235ba17f792f9fe1fc52332a177017"
    else
      url "https://static.ampcode.com/cli/0.0.1774956860-g4cca6e/amp-darwin-x64"
      sha256 "238c731989fbd97373b2ecaa27eb78021fcd901a5c9e0a56ad3281b6503c0837"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774956860-g4cca6e/amp-linux-arm64"
      sha256 "eb4253dd431880eb76a3c1d0ea3fe3570cd6510ed530802ac73b8c765d786aa7"
    else
      url "https://static.ampcode.com/cli/0.0.1774956860-g4cca6e/amp-linux-x64"
      sha256 "779a340ee4d68c69ccd2625b277137de10421d7cf61ad763ce6e1be5bbfef17b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
