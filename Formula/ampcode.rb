class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787601851-gbc9885"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787601851-gbc9885/amp-darwin-arm64"
      sha256 "02b1eef91ec1b883f9711b1e60e2f4e27f9c00d83f3b2db359d5a51d2d5ee1a0"
    else
      url "https://static.ampcode.com/cli/0.0.1787601851-gbc9885/amp-darwin-x64"
      sha256 "c469b2760aa1c63df266f28e4dac2c335bd88bd82a3760dfb706858875ef751e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787601851-gbc9885/amp-linux-arm64"
      sha256 "99e109d30e8db2345fd127502bafa642b796fd0b8cea90c8f39e843b750e4066"
    else
      url "https://static.ampcode.com/cli/0.0.1787601851-gbc9885/amp-linux-x64"
      sha256 "f9d1c21fce6acc08c693e7070af4b5e26f241911c108ec6164ec91aa616cd339"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
