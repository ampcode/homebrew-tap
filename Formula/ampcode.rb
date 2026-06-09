class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780994079-g1b9b4c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780994079-g1b9b4c/amp-darwin-arm64"
      sha256 "49316e6515706908f5bb8618cc5448000cf2be4e39502882a8f7578add549703"
    else
      url "https://static.ampcode.com/cli/0.0.1780994079-g1b9b4c/amp-darwin-x64"
      sha256 "6be589a0f592747cce2d61e9b72f424046d0912c7d9f94e4f083717e12668b01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780994079-g1b9b4c/amp-linux-arm64"
      sha256 "7aaedff07de69560c2d2fb1ffefb71623e0ac07264d6966a37d7e34e460ae2aa"
    else
      url "https://static.ampcode.com/cli/0.0.1780994079-g1b9b4c/amp-linux-x64"
      sha256 "d937d2c77b9291ca05eb9604cb128f6c31c5907dc9fde416bf9842c799324640"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
