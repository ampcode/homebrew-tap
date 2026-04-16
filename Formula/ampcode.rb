class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776346639-g823854"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776346639-g823854/amp-darwin-arm64"
      sha256 "b94738083afcc665cc323fa5f53bab64e942a564149d75cc034cacd6dbd84c7d"
    else
      url "https://static.ampcode.com/cli/0.0.1776346639-g823854/amp-darwin-x64"
      sha256 "a90ef1925c06703b2a98cfa7e963c7360bf2c04d1e5f200ad5ec102535a93104"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776346639-g823854/amp-linux-arm64"
      sha256 "5b0f8582f00f076840376206b3e68f878dcf0e1fca07c927614a1e2ffeb86ba7"
    else
      url "https://static.ampcode.com/cli/0.0.1776346639-g823854/amp-linux-x64"
      sha256 "6f29e4619186a1b0248464a42cbf9ae28e476e807c6cf0317cee91b4862e1506"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
