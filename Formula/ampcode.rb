class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777019765-geba625"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777019765-geba625/amp-darwin-arm64"
      sha256 "424a17c8b5483a3253e0dcc8481edf833845df4d8e90dc8ea89a9f5e0837f600"
    else
      url "https://static.ampcode.com/cli/0.0.1777019765-geba625/amp-darwin-x64"
      sha256 "3052dd5a052ec754bca939d2fedd5192d61d726139e0f44df625384ddd552443"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777019765-geba625/amp-linux-arm64"
      sha256 "a70d39c17aaf42f5c7565a3a658aa0ed64a344e70d98d88a650f94a24ba21b1d"
    else
      url "https://static.ampcode.com/cli/0.0.1777019765-geba625/amp-linux-x64"
      sha256 "0eca57a6a15c364913757a30f51035a29103c0041fda0cfdf08e69a980d470b1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
