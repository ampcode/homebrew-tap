class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770343704-g892990"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770343704-g892990/amp-darwin-arm64"
      sha256 "1ad71529589d2df2c059f3fb9cd5079b0f68279f8dd4a1daf74fa0c302b0fc2e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770343704-g892990/amp-darwin-x64"
      sha256 "5a6c82faee50c13919cb337c36202228cdf90e3993055af8793e07701175c75c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770343704-g892990/amp-linux-arm64"
      sha256 "2a1b7e43d48bdbf4fe50a482bf587a6e3b9129ac3fd24bce5ca431f95fb593b7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770343704-g892990/amp-linux-x64"
      sha256 "0bb7f750ef8637494586832fcbc07933719602442e5d5f8bb11bd541c14945b6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
