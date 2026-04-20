class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776687401-g47d14d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776687401-g47d14d/amp-darwin-arm64"
      sha256 "a83e0996111ec36af9cfc89f10256d3652e60b172ed70cca923f794d3366fd89"
    else
      url "https://static.ampcode.com/cli/0.0.1776687401-g47d14d/amp-darwin-x64"
      sha256 "c3dd9c9449ecccbb7c9df11e0207c576a96d0e092c008f23d84e6769038cc9c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776687401-g47d14d/amp-linux-arm64"
      sha256 "32acce9c7c7028459bd016ac030fe9cbf0300c48c4c8980a4807ea1783d5d6e1"
    else
      url "https://static.ampcode.com/cli/0.0.1776687401-g47d14d/amp-linux-x64"
      sha256 "d9e51d76838e247001c19ebe4bc2861a21b2276e75737ce9c1eeab13e5c799a2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
