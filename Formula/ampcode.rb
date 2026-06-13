class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781345939-g79ca9e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781345939-g79ca9e/amp-darwin-arm64"
      sha256 "32f8cc7b17852777d588c46faf71eb3ea154eb2060c9559999d465dd5b0f1327"
    else
      url "https://static.ampcode.com/cli/0.0.1781345939-g79ca9e/amp-darwin-x64"
      sha256 "a604ae1fdd8e3d8810f0cf0f35a9bb69a475a6a107ee3ef22a895a43d733d3e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781345939-g79ca9e/amp-linux-arm64"
      sha256 "3db9045b2058330edd3295d9b360d32c237e920edb0f1cf3912b5594ba288666"
    else
      url "https://static.ampcode.com/cli/0.0.1781345939-g79ca9e/amp-linux-x64"
      sha256 "13ec232e868b62e8f27b9d31cc417fa1d8c1f69bd829ab34431b1d8b02305fc3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
