class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777141456-gd5ca69"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777141456-gd5ca69/amp-darwin-arm64"
      sha256 "5adb81a17cec09e20edba9a40dc2bba5ab01b46148bcef2fb634a6e380b83efc"
    else
      url "https://static.ampcode.com/cli/0.0.1777141456-gd5ca69/amp-darwin-x64"
      sha256 "a0e51c3c08640735319abb5d594288e9363519c0df821a1149f167428d198746"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777141456-gd5ca69/amp-linux-arm64"
      sha256 "036904c37d91e367426b083fac3374f6e859ce83ca31f17dbf6fd04683f873de"
    else
      url "https://static.ampcode.com/cli/0.0.1777141456-gd5ca69/amp-linux-x64"
      sha256 "eea6642649a5aaf46848c46aed14fa2b540e361063d033346d40e9760a35e110"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
