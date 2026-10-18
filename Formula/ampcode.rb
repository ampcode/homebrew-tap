class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792338287-g8dcd8d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792338287-g8dcd8d/amp-darwin-arm64"
      sha256 "e2e52175a73545fd8074332881c608d2d1489ce2cf2da0a1b12b7f6319b3f232"
    else
      url "https://static.ampcode.com/cli/0.0.1792338287-g8dcd8d/amp-darwin-x64"
      sha256 "686f8a476c46260cdb90927b2d1088d691fdba7df241c0c06c9dcd3865cc6859"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792338287-g8dcd8d/amp-linux-arm64"
      sha256 "3a67de268f8ce5490065c96439d1d50e2bf79394ce5724a1433e0ecaa32addd2"
    else
      url "https://static.ampcode.com/cli/0.0.1792338287-g8dcd8d/amp-linux-x64"
      sha256 "6393677b91ce8aff2358107c16d192dfb1ac3fc9f5eb17f4bc324c06b7be729b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
