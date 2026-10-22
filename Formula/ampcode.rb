class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792699242-g1cbc87"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792699242-g1cbc87/amp-darwin-arm64"
      sha256 "0a44f4b5e479841e037fc6539fddf82498bedffd7fdd5e9af7228f5f502be306"
    else
      url "https://static.ampcode.com/cli/0.0.1792699242-g1cbc87/amp-darwin-x64"
      sha256 "99587fdd8df4d3999500a6e6c69e5f0afc34e17cf3fc4b860752a0798487f753"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792699242-g1cbc87/amp-linux-arm64"
      sha256 "d703f1e59218b755c3092e1ae459c991a9bd80da6c718fdb31bd5462b7aabc68"
    else
      url "https://static.ampcode.com/cli/0.0.1792699242-g1cbc87/amp-linux-x64"
      sha256 "c6c92488896389751fda0e1efb357d8df1aacb406d356df722e7ee72f9890300"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
