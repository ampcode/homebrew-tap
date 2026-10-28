class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793183068-g41670e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793183068-g41670e/amp-darwin-arm64"
      sha256 "6fca2ab5a3b06e07636ded9b41af59b00853979ade085dd54fee31d05f2274f2"
    else
      url "https://static.ampcode.com/cli/0.0.1793183068-g41670e/amp-darwin-x64"
      sha256 "cecdf718ac227698c270dfb602a0953d50d7efd23d2ccab7a63362c7e76089c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793183068-g41670e/amp-linux-arm64"
      sha256 "d5d19fa0445fade6900e80e2120f269d413041386df9cc35861d239617d93ef8"
    else
      url "https://static.ampcode.com/cli/0.0.1793183068-g41670e/amp-linux-x64"
      sha256 "7f3dff3570f59c32baf44bc623c4d8a070c99ede1395fca59c8f75174a8c1704"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
