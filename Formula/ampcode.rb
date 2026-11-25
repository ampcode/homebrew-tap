class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795608053-gcec25c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795608053-gcec25c/amp-darwin-arm64"
      sha256 "05b2e8651835b68f34e66e07bf741b554b7e31af67c62234b6bfe6072da6c11e"
    else
      url "https://static.ampcode.com/cli/0.0.1795608053-gcec25c/amp-darwin-x64"
      sha256 "e21ebc921c42d96e375aa73d496453b9870b702b9be628c43c3d5e5ed847f95e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795608053-gcec25c/amp-linux-arm64"
      sha256 "0e0f9aba9a86b81d2bf024909af380a235765e3cd6d283b7cdc7e153645cc64f"
    else
      url "https://static.ampcode.com/cli/0.0.1795608053-gcec25c/amp-linux-x64"
      sha256 "aa727817c8889c2b4f5017611617516798d657fc231094293d95990535cc2f21"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
