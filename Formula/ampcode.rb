class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775060215-ge9d9b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775060215-ge9d9b3/amp-darwin-arm64"
      sha256 "6da98f63b7a787ede249a78fff7b4e156434ab41b773c27bedfdf35877c12ab5"
    else
      url "https://static.ampcode.com/cli/0.0.1775060215-ge9d9b3/amp-darwin-x64"
      sha256 "c39315bed2babb6e4a55c3ac7abfe81648522e3a09ad5faeb80183fe96191e9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775060215-ge9d9b3/amp-linux-arm64"
      sha256 "cb136d5b7ec5433dad09326f2a7660789d0b779f3c2e55a69a3d423e4ff9f314"
    else
      url "https://static.ampcode.com/cli/0.0.1775060215-ge9d9b3/amp-linux-x64"
      sha256 "bac67f9c6a138346c14bd82513d57b47c933a25bbb000cb9cfee2e2921003fac"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
