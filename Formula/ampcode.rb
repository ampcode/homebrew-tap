class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776846576-g2c8030"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776846576-g2c8030/amp-darwin-arm64"
      sha256 "69377115ba1d9bb49ab717ab82b1ec457b13bacfdbf0d5adb1fdf1c68cdba5f0"
    else
      url "https://static.ampcode.com/cli/0.0.1776846576-g2c8030/amp-darwin-x64"
      sha256 "a7a36128fa719afb57b06944992c09bf3bc551da891cdea6c3e0c5ccf15eb039"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776846576-g2c8030/amp-linux-arm64"
      sha256 "7f90e2638c6c9154e117d1141ed09f086eb2439a41bed7a6c3e01f42e4e0c1d5"
    else
      url "https://static.ampcode.com/cli/0.0.1776846576-g2c8030/amp-linux-x64"
      sha256 "fa1d7f33f698d4aa3c5c07fe69412108ab8356d42e795ee892028b4875ae0885"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
