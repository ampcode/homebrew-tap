class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780677932-g159ed8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780677932-g159ed8/amp-darwin-arm64"
      sha256 "f803f3722d7b9e7616e738768327dd4d2204dfc21a2c5306890c400dfb46329c"
    else
      url "https://static.ampcode.com/cli/0.0.1780677932-g159ed8/amp-darwin-x64"
      sha256 "314f335e29af9510235cbf099b4170f5f3780eb96962339b6cb3b786ba6425db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780677932-g159ed8/amp-linux-arm64"
      sha256 "9d3c8ee14dbb5b613dbdc96eb666b3a7218097af23125ca2cf15033425018f79"
    else
      url "https://static.ampcode.com/cli/0.0.1780677932-g159ed8/amp-linux-x64"
      sha256 "0f7f85426dec52009c27fbc260be789033f27aab4e38c04dadb2dc525c43ecee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
