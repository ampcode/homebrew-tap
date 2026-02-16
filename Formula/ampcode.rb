class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771242271-gf7b5ed"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771242271-gf7b5ed/amp-darwin-arm64"
      sha256 "5d789bdc8d0ae03e21f68454513cb31a198b57f700eb5a3aa90dcca791d26b74"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771242271-gf7b5ed/amp-darwin-x64"
      sha256 "c86e35380fc1a7ea9e610b617ce1a4cf15d7969ab92f8548dccea552f18ac346"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771242271-gf7b5ed/amp-linux-arm64"
      sha256 "1bd48baca4f4f1dc68b8d7d07640e394015cab23c8571867e03079267437ab9a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771242271-gf7b5ed/amp-linux-x64"
      sha256 "2bb02b6a8f44bc038cd5d50287f94de39007490968fc34d0f77dc19c25866367"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
