class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776359148-gfabf5f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776359148-gfabf5f/amp-darwin-arm64"
      sha256 "a7e70e3f4e18c2ffb3b289e56e3ec8f9b733e828203f373635fd1a329f7062fe"
    else
      url "https://static.ampcode.com/cli/0.0.1776359148-gfabf5f/amp-darwin-x64"
      sha256 "77da6d7d87aadd9140c04b2eb1532c0db62a59217c8e38bdfd38f6c2d066e390"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776359148-gfabf5f/amp-linux-arm64"
      sha256 "a6d8d26d2cdb51d8bfd86d9f2b0e17b456adecb96f828ae209fdf42806188c8a"
    else
      url "https://static.ampcode.com/cli/0.0.1776359148-gfabf5f/amp-linux-x64"
      sha256 "1c9278a70ed12511827a34f9c6b8b1d9a6811b4c1c9f35628826fab1711d602c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
