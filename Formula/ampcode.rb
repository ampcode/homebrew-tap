class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770451366-gbb89a1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770451366-gbb89a1/amp-darwin-arm64"
      sha256 "e2af2856ca7970225614651e86b3c68d8fdf17595a5831c231c305650bc8be42"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770451366-gbb89a1/amp-darwin-x64"
      sha256 "b6e7a6524a7391c00193f200e97dd14b19ea42312bcecc3b4092b00e9a47b37b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770451366-gbb89a1/amp-linux-arm64"
      sha256 "e3207db64bd8cf35adad3679a706a2a18446a447fa650373048c807d426ffef5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770451366-gbb89a1/amp-linux-x64"
      sha256 "b3190af7fe3b33e2490c99abebc43d652dd2fed2b3bb6e9580148924e09e7cb0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
