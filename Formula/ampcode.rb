class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774447066-g6a226a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774447066-g6a226a/amp-darwin-arm64"
      sha256 "5fb24a891cdff2165677951e0f98ee538638dd57f9f69fdd661a7ab6259e603b"
    else
      url "https://static.ampcode.com/cli/0.0.1774447066-g6a226a/amp-darwin-x64"
      sha256 "50f3a190c20cc7e40d3bdf4785c34817952ee868405c8c0d2ac942f28bf4a02d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774447066-g6a226a/amp-linux-arm64"
      sha256 "10079aa3c2984e233d39932a8d6edc4d255427f346ccaa9fc9f1600900bec348"
    else
      url "https://static.ampcode.com/cli/0.0.1774447066-g6a226a/amp-linux-x64"
      sha256 "7cb85b369d3ad9c320b2020b91ac9adb2fb14a1c1d398e0689205eef08ad95a4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
