class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771402123-g52ca81"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771402123-g52ca81/amp-darwin-arm64"
      sha256 "20cefcb3a4257026278449dbe4a7955865f70d0b3d3f8bc9fe1d30e176e85119"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771402123-g52ca81/amp-darwin-x64"
      sha256 "820011b49ccc68e01696b3f39ab43d6cd16d3320d171afc094a028e04c04e8e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771402123-g52ca81/amp-linux-arm64"
      sha256 "9dda4a95f53cf3a42ef5b5f63441c0ec07d6f2d9b8123d6b5406516d1dcc5008"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771402123-g52ca81/amp-linux-x64"
      sha256 "7e4098f4ae994b987316e89b42c52a055e1ef2afb260e93640f210c6dbf458a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
