class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770379473-g417057"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770379473-g417057/amp-darwin-arm64"
      sha256 "06635506e11277136773627e50247bb7e1eaa660f458497b2ae1b1337f2fbf61"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770379473-g417057/amp-darwin-x64"
      sha256 "e971c2bcd2f1c234ad4f38554112689c95d8ed2501ae62d839bd98eef2e98e93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770379473-g417057/amp-linux-arm64"
      sha256 "1a8d62bc384ccd110482d3c9220cd68a9849f7490e2db0cd4f43511d26a9c46d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770379473-g417057/amp-linux-x64"
      sha256 "652ecf5ed08eee704d5c6fca5127b6788aee1ceb7bffc6796bc4864f26ee6c02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
