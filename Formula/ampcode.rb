class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785906080-gd4ffa5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785906080-gd4ffa5/amp-darwin-arm64"
      sha256 "ff6d22337939692cf807dc0ee7d21649792a777be396009294c737e9e00a8316"
    else
      url "https://static.ampcode.com/cli/0.0.1785906080-gd4ffa5/amp-darwin-x64"
      sha256 "8c0eec89c02018ab8b89f5e0cd0871a8691f25982f31e10675a16921421f4d48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785906080-gd4ffa5/amp-linux-arm64"
      sha256 "916fbfb84766d00ac6484e1d81c45cf5d753db3fcd89d69b6a7dc3bbebe93933"
    else
      url "https://static.ampcode.com/cli/0.0.1785906080-gd4ffa5/amp-linux-x64"
      sha256 "d3d4ddfe8e2152fa95ed6f3c8f4db953f80a5de3e1f790359373bd36a12db921"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
