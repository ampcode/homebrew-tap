class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788465626-g21374e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788465626-g21374e/amp-darwin-arm64"
      sha256 "61f21f8e3fb2d8a978f837b10d19f1c6981b75a0e96cefadaaf53aedfd10035c"
    else
      url "https://static.ampcode.com/cli/0.0.1788465626-g21374e/amp-darwin-x64"
      sha256 "b1bd65113d98c8f6097d74c6c04166a2f3253125b7d3841cca02497fd2f29054"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788465626-g21374e/amp-linux-arm64"
      sha256 "75d1322e82079032bef9f0953e8723cd9b21f54fb31ef297be52c612fcc89fea"
    else
      url "https://static.ampcode.com/cli/0.0.1788465626-g21374e/amp-linux-x64"
      sha256 "8ff02e88f420dc151212ab443d11f19660fb05d6e6cb7b6157ff65cfc6244c96"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
