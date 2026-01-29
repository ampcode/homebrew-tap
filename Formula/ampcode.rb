class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769652385-gec71cd"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769652385-gec71cd/amp-darwin-arm64"
      sha256 "e71c376bce4daf96a419a64339f8141d564fc99649229e6dc1316ebf52620882"
    else
      url "/0.0.1769652385-gec71cd/amp-darwin-x64"
      sha256 "cebee567e06d23edc1b2d1904ea588465e017acb14f1a775d55e1f75a84c4fbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769652385-gec71cd/amp-linux-arm64"
      sha256 "1b2f86120dd9b17b4222105eb6970cd9f2d63fa03d0497708096a5655579cef2"
    else
      url "/0.0.1769652385-gec71cd/amp-linux-x64"
      sha256 "b85f400aca85207c736a4c133e20ffd38e2b5c555a3667ee46a9f85df4b20a75"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
