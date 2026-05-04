class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777924215-gea1d78"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777924215-gea1d78/amp-darwin-arm64"
      sha256 "9e2bb6c8de59c4b184981c2b3a4b069c025459ffb1743bf9d59b63a275665c24"
    else
      url "https://static.ampcode.com/cli/0.0.1777924215-gea1d78/amp-darwin-x64"
      sha256 "c87a3c656713a05ac1a46964477a4465da92b6c14bc071d87c01f2365ff68145"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777924215-gea1d78/amp-linux-arm64"
      sha256 "30c137ff0958583dcf70235125606a9e7a4479f66e7ef5a0c99d4e677119f7ac"
    else
      url "https://static.ampcode.com/cli/0.0.1777924215-gea1d78/amp-linux-x64"
      sha256 "2a76cc0f6c600bbe36684d933af5d5a154a05bc463a474a9a6e0bedd241935f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
