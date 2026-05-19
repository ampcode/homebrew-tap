class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779190035-gd08a72"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779190035-gd08a72/amp-darwin-arm64"
      sha256 "32e40779b91b4d04893378dfa500db1b23da0ac472883ccb37575fb7afabbce9"
    else
      url "https://static.ampcode.com/cli/0.0.1779190035-gd08a72/amp-darwin-x64"
      sha256 "58fa7627b44c4cc6c3187c5e6ca9f3f04d7accb31aeef3c84367add971d31edd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779190035-gd08a72/amp-linux-arm64"
      sha256 "dbbc0b2be5d7d6e4362caa75793465749441c80b032323811f1fdc53a7ab1de8"
    else
      url "https://static.ampcode.com/cli/0.0.1779190035-gd08a72/amp-linux-x64"
      sha256 "9a5580271c9a9750f0ede86a7625bfb798396ad47549dc52996dfaf3519c6e2d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
