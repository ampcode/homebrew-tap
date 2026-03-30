class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774852556-ge9c066"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774852556-ge9c066/amp-darwin-arm64"
      sha256 "5992d7ff39339472dcd6c600a38b05aaad2806ab00ad564e66a121629db7b22b"
    else
      url "https://static.ampcode.com/cli/0.0.1774852556-ge9c066/amp-darwin-x64"
      sha256 "64605fe44b24f3578d27fdaeee998ebfb17a70e2d378def20c228de9dc76b7ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774852556-ge9c066/amp-linux-arm64"
      sha256 "c4c2a99ebe6f3782e3c36bb419eaf1a5c9ff06a2d27cd06d9bff642a39c10d59"
    else
      url "https://static.ampcode.com/cli/0.0.1774852556-ge9c066/amp-linux-x64"
      sha256 "2312e4ce1f0d2fc16e2bf0864e1bc45656bbbec95c24cfca07e482974f85cf2b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
