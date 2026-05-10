class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778389743-g2104da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778389743-g2104da/amp-darwin-arm64"
      sha256 "5ad275a9b68f2b08655585412ae2c794a78831873eb44f80176e0e0eeeed7723"
    else
      url "https://static.ampcode.com/cli/0.0.1778389743-g2104da/amp-darwin-x64"
      sha256 "8f32dae9e35b933a3d1eab04aad48becf27a5c602287b067ef3a894a80a373b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778389743-g2104da/amp-linux-arm64"
      sha256 "04dc34fdf1ebf2362e9cefba28efa327e3c767fc8558d6a0fcff23cc445bb8b9"
    else
      url "https://static.ampcode.com/cli/0.0.1778389743-g2104da/amp-linux-x64"
      sha256 "c14beedba22f30017ae3b91e70e0d7466c18b97587b617bdc8b1144fa075e9f2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
