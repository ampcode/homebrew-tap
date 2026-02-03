class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770125725-g448892"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770125725-g448892/amp-darwin-arm64"
      sha256 "f96ea0dcc05df3df50100d6ea462e53192e8ce83386fac5d28360c1e9b3e960c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770125725-g448892/amp-darwin-x64"
      sha256 "e88293db223fdc0431f211e64cd0a188cd2bcc59574745664dc4e8f4f9808f79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770125725-g448892/amp-linux-arm64"
      sha256 "ffc7e1ed93211bf39d19d812d859c12c48dc14bf61006725f3c7fe1524fe8726"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770125725-g448892/amp-linux-x64"
      sha256 "a71291eb1d8ca97a4a90b586ebdb1010bfa2af1c3d8636a33ed57f94ae2060f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
