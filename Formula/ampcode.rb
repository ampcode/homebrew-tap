class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784191383-g8cf3f7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784191383-g8cf3f7/amp-darwin-arm64"
      sha256 "1dd922c758ea15d41ca8c399f06f64b103c92078a4f154fb51c110a4beb11c8f"
    else
      url "https://static.ampcode.com/cli/0.0.1784191383-g8cf3f7/amp-darwin-x64"
      sha256 "56aaed7ddebb5889df1eaae06fc17c057e2081babfa643bfdbea307726747b7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784191383-g8cf3f7/amp-linux-arm64"
      sha256 "5cd96bd4bc4affeb3f990ecdced45aa699774a791d7ff106b81d1521054b8441"
    else
      url "https://static.ampcode.com/cli/0.0.1784191383-g8cf3f7/amp-linux-x64"
      sha256 "73b9c8d8ff2eca4769bad1bf4342ff79082ed480594ffab22c4756c5e5f01186"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
