class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793116859-g0980e4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793116859-g0980e4/amp-darwin-arm64"
      sha256 "5e30d8ee38f09592df9bbb8113da99d9c064e1aef32c57aaaa2a825133a299d2"
    else
      url "https://static.ampcode.com/cli/0.0.1793116859-g0980e4/amp-darwin-x64"
      sha256 "ba1e03603efd29f073dc7156e6d96bc75f09e3eb2c2848f48ea8f125a3e5af89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793116859-g0980e4/amp-linux-arm64"
      sha256 "0c243c4bf2abb770a9fe9d2ad24fa3f59025a1b7d000b5911375dc782a917ac1"
    else
      url "https://static.ampcode.com/cli/0.0.1793116859-g0980e4/amp-linux-x64"
      sha256 "47eea403925f6d94f1285c88bea72a9c663b8c9cee9bc3b1e3a40e084cf9cddd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
