class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783268437-g66f800"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783268437-g66f800/amp-darwin-arm64"
      sha256 "82d1fb8bc4d67c7655c0b39dc508ea908fcc4751185dc3b3bdaeb5e4df04a4a1"
    else
      url "https://static.ampcode.com/cli/0.0.1783268437-g66f800/amp-darwin-x64"
      sha256 "de08dc27985920cb0950e27b62b28d3b2b4f169079fc32d9fad4d8f0bb96ada1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783268437-g66f800/amp-linux-arm64"
      sha256 "48479e8266c98020f0252f529f524716d9b4339b9199fee881d2f469507edc9b"
    else
      url "https://static.ampcode.com/cli/0.0.1783268437-g66f800/amp-linux-x64"
      sha256 "6629b13deaa9c4d51a371869fc1f22fcd52b1553602e8fe152ec2f1ea8186c1f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
