class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780456213-g47360c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780456213-g47360c/amp-darwin-arm64"
      sha256 "abd024228e6e0d7b36d56982222df4f2a12b3c83d1adc7545b6dea5c144be37b"
    else
      url "https://static.ampcode.com/cli/0.0.1780456213-g47360c/amp-darwin-x64"
      sha256 "f143260ff50f67b024574402931eaed161853e3d764c8ece8f4c1ecf5d8dcd64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780456213-g47360c/amp-linux-arm64"
      sha256 "c75befc6566c5f654806256bd64f54cad61f9e5c721124337de46ad89977b64a"
    else
      url "https://static.ampcode.com/cli/0.0.1780456213-g47360c/amp-linux-x64"
      sha256 "d430ae9ce7fd4d852f6ded35f758aca1f2eca2b6c2361e1fd36ef4929d8bd5a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
