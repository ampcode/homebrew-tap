class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786162957-g48b3cf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786162957-g48b3cf/amp-darwin-arm64"
      sha256 "de569ffa01bf43dfcfc7f384efc44339df7c749cabd7c9bc033a561b119fee0b"
    else
      url "https://static.ampcode.com/cli/0.0.1786162957-g48b3cf/amp-darwin-x64"
      sha256 "726368f218edb6c3bc0d07a1d8f0eba3ad3fe8f3fcc1a31fa701e20dd0513119"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786162957-g48b3cf/amp-linux-arm64"
      sha256 "0e90c5009007950c3498f7e7c9d139a53f5e71908d38c173a26f9cb740ad4bf7"
    else
      url "https://static.ampcode.com/cli/0.0.1786162957-g48b3cf/amp-linux-x64"
      sha256 "6100c7267d64bcf74eb90f5bb3b3e3c1af5fa2c7af47488537c97ae988810982"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
