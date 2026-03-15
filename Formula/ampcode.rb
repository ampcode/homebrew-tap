class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773561970-g54a70f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773561970-g54a70f/amp-darwin-arm64"
      sha256 "2c42f55ac057d23683565f911d8d7185f7b5a18411538dd02651a7443d2fcb2a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773561970-g54a70f/amp-darwin-x64"
      sha256 "273c6633b86e332c7a48b3a71e95e924914a2aba3f62215db3f841292abe63a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773561970-g54a70f/amp-linux-arm64"
      sha256 "7ad63d3e4d9b4090fe8a150bd31b5a93eb3ffa5357dcd657d3b14b4b5be2f260"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773561970-g54a70f/amp-linux-x64"
      sha256 "1d9230a87599606a9d69e145bd63772e64011b5ce1f954433b459cbd7735bc41"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
