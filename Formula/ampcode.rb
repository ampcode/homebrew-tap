class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790409661-ga80292"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790409661-ga80292/amp-darwin-arm64"
      sha256 "118de6a08b14c7a6f8094ef24faa7d1f6b10e75297be9cb31b811405ae1aa3b1"
    else
      url "https://static.ampcode.com/cli/0.0.1790409661-ga80292/amp-darwin-x64"
      sha256 "1bb8f41cb46e941fb03424d777b1fcb35dcc2c365d808abf897e2885a6198a1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790409661-ga80292/amp-linux-arm64"
      sha256 "4e0835cc8e40bccb19e499f575399f9865faca412a9994719593eff9785fe8fa"
    else
      url "https://static.ampcode.com/cli/0.0.1790409661-ga80292/amp-linux-x64"
      sha256 "c27b4bb3ffc5b1abb39b480689625f8be4a0a9d3c84c6fcaa9736aeb4c19c72f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
