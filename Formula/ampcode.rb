class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771602244-gac9341"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771602244-gac9341/amp-darwin-arm64"
      sha256 "70c6efaf105155b2ae4e9d00380b18376ca0fabad765b4b0bc56a2bde502cf48"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771602244-gac9341/amp-darwin-x64"
      sha256 "d51fee46c3844d4b4db7c2732f1939489f758ce5f33542c10aa8e35ee3e7a7ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771602244-gac9341/amp-linux-arm64"
      sha256 "19f9032d716e3ed2103d972d6f2d27709231397f7d061ffac74f88924789b520"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771602244-gac9341/amp-linux-x64"
      sha256 "5a689085a02506e3e24aeb21df8dbace7f4dbb1593966cc294e3e2d6e502cba7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
