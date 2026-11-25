class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795579235-g370682"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795579235-g370682/amp-darwin-arm64"
      sha256 "8e97b9c352f27050b46231024be4289d3cdc458ed6249ee954266f23a46ebabc"
    else
      url "https://static.ampcode.com/cli/0.0.1795579235-g370682/amp-darwin-x64"
      sha256 "637629d02ee1c4d5be77e7d5679171c6af26344d95c29494cc25de936eb15a6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795579235-g370682/amp-linux-arm64"
      sha256 "b727b678e4e34c4f3beb582b2c4a66d4529773a4c74c07e15849c77c3f577bae"
    else
      url "https://static.ampcode.com/cli/0.0.1795579235-g370682/amp-linux-x64"
      sha256 "e0bf5b24d033abc44990b0b4c5e41f84abcc1ed246407d1cfa4151ab6dff1c15"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
