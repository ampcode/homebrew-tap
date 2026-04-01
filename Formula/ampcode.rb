class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775051778-g504b84"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775051778-g504b84/amp-darwin-arm64"
      sha256 "9c7d4c7d5c171cbaf52850e9d5adbb228c43056adf3a3d28e5b0f1eb64a27ff4"
    else
      url "https://static.ampcode.com/cli/0.0.1775051778-g504b84/amp-darwin-x64"
      sha256 "47a8d0be8089bd128da2055063c610ef829b00109811e7611a50c44d79758060"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775051778-g504b84/amp-linux-arm64"
      sha256 "36e01106e91599028944b1fb3d0b0b2a19172c3196e641ef39c118d363c8a001"
    else
      url "https://static.ampcode.com/cli/0.0.1775051778-g504b84/amp-linux-x64"
      sha256 "94d876032f6751e888668154ce1c63afdf2997128652ccdb57139a4f50ab0645"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
