class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780377510-g75f9a8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780377510-g75f9a8/amp-darwin-arm64"
      sha256 "3ec254bce6c9cd5e17b347e563b04f5989ca3141770fd8caccd07ebf9d35ff8e"
    else
      url "https://static.ampcode.com/cli/0.0.1780377510-g75f9a8/amp-darwin-x64"
      sha256 "c62f8312c3cb17b7a7fcbebe66af9340479e7a6d63e7dd108c7187bcb4911acd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780377510-g75f9a8/amp-linux-arm64"
      sha256 "bd460f12cffca97f61e98becf8ba5704b9b3d6f1e626d18ac8ec5736666ae851"
    else
      url "https://static.ampcode.com/cli/0.0.1780377510-g75f9a8/amp-linux-x64"
      sha256 "592f3137ff15aa3e71187f2c6bca6215f05006015647fb9d438cd71df8591a8e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
