class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779973320-g362e01"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779973320-g362e01/amp-darwin-arm64"
      sha256 "ba18e43fcb87a004cb3398c130f84437e0c14bfb0f33b0d056c6ca37cfa86856"
    else
      url "https://static.ampcode.com/cli/0.0.1779973320-g362e01/amp-darwin-x64"
      sha256 "c259ce17a1a61cad2c280e9894cff01f26548291aa2ff340b6535c6e5cd0b21d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779973320-g362e01/amp-linux-arm64"
      sha256 "53bd88ca400029f954a3f8cce5ea6803d58c4dea2d8d64b4eea1481431a87f18"
    else
      url "https://static.ampcode.com/cli/0.0.1779973320-g362e01/amp-linux-x64"
      sha256 "0b98c8fe4c99c5c0a352d10e53cdabf92d7035167a54ad527f9d716a049c4a8f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
