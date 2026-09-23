class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790141798-g92d539"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790141798-g92d539/amp-darwin-arm64"
      sha256 "c5963fd165e01b08626b287669aa3213e269a11a92464e2e8f8f4ed4c2834d22"
    else
      url "https://static.ampcode.com/cli/0.0.1790141798-g92d539/amp-darwin-x64"
      sha256 "4cdf5e637d4aecf36173dfaf9468c04f485640b1b360c9d23ef11f7c907c645b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790141798-g92d539/amp-linux-arm64"
      sha256 "eb7584a16f6a5924873792a78954e91e0010c8faa18dc40f7376796ddc929806"
    else
      url "https://static.ampcode.com/cli/0.0.1790141798-g92d539/amp-linux-x64"
      sha256 "b82a8473fcd335464709a49a7a9d142455fa7d796a356cb3520eb96989429fc6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
