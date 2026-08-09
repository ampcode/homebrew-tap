class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786291588-g1c260a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786291588-g1c260a/amp-darwin-arm64"
      sha256 "60a81e768b4b3de404e4dd897841d382a059afe150b4110da24015d608492505"
    else
      url "https://static.ampcode.com/cli/0.0.1786291588-g1c260a/amp-darwin-x64"
      sha256 "9e82b5d625981b55ff8d04a427b2d598ead5e2dd1d531ef6f44f5de3e5d4cd50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786291588-g1c260a/amp-linux-arm64"
      sha256 "97622d83fdf81b867e20b9cfc243f62a8b4fb54b13db62de86045d16da731b93"
    else
      url "https://static.ampcode.com/cli/0.0.1786291588-g1c260a/amp-linux-x64"
      sha256 "3626e2eee8011e3108560aa4e56fda1614eecc977d8df9dd14ddd356bacc90e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
