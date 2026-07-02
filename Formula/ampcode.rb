class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782969322-gf53f17"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782969322-gf53f17/amp-darwin-arm64"
      sha256 "25fa71996ece2c366c3e8130ef1a5a848b6789a49c28b67f2548b5434fbe6001"
    else
      url "https://static.ampcode.com/cli/0.0.1782969322-gf53f17/amp-darwin-x64"
      sha256 "30a6e9d600df9b8fe0620f914fdee332b1b4d8e0ff0fa7f647460191187e8eaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782969322-gf53f17/amp-linux-arm64"
      sha256 "263a093111b87f86196f45683df6293dae6b8925a51120e0b2449e5179973bb4"
    else
      url "https://static.ampcode.com/cli/0.0.1782969322-gf53f17/amp-linux-x64"
      sha256 "17f8a0f0424acc3c892dbb25e97e93803f905e35c3aca43f6764722ec11aa774"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
