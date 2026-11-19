class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795089646-g8be92a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795089646-g8be92a/amp-darwin-arm64"
      sha256 "71feb93a408bf24ca180a508571a259e7971b2ae8dc1d9f409c0639c14fe41be"
    else
      url "https://static.ampcode.com/cli/0.0.1795089646-g8be92a/amp-darwin-x64"
      sha256 "8f65af644dd76d3bf1e124fd5ab99e9545ba2d4c4acc391065343415af5ca450"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795089646-g8be92a/amp-linux-arm64"
      sha256 "fa42add8f36044d5b4416559933ae3772393a948cd006508f5fafde01a5fa476"
    else
      url "https://static.ampcode.com/cli/0.0.1795089646-g8be92a/amp-linux-x64"
      sha256 "44697519f9458714e0d8f8f9a5a40f07a6ba03357db3d1ab6d769e832b65a52e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
