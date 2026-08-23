class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787443308-gaae9fa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787443308-gaae9fa/amp-darwin-arm64"
      sha256 "7e2dee55b22f8e01f307a826ca039a00bd9ae59e4430c43003b26716f06ee969"
    else
      url "https://static.ampcode.com/cli/0.0.1787443308-gaae9fa/amp-darwin-x64"
      sha256 "313ae3ddf319829221d7b929e5832b9bb69d74347856ac7c628615f7533371ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787443308-gaae9fa/amp-linux-arm64"
      sha256 "6bd038d06b02f69e03f6924d85e2b63603ad0920a60f5444a56b7d847d522cbc"
    else
      url "https://static.ampcode.com/cli/0.0.1787443308-gaae9fa/amp-linux-x64"
      sha256 "3b1d0811757f0ba3c10e23e29f3fe5cf6d15b83346a4db0ef55a3202cd8b16fb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
