class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769441034-gd5aacb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769441034-gd5aacb/amp-darwin-arm64"
      sha256 "2b8e314880811634096876641fb033d9f0183b75138f711a0e3a2d9b488381c8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769441034-gd5aacb/amp-darwin-x64"
      sha256 "ed1ae77dc56d103ef21ff2b863ca7975a755ea17543a27dda4f0cba2d5038ad9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769441034-gd5aacb/amp-linux-arm64"
      sha256 "ed365fd08408b5ac4858b093f6d517685db20eefcb4548411707a28941aa9643"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769441034-gd5aacb/amp-linux-x64"
      sha256 "d72521394134658707b796c3ac33bdc5843153e89dbfc22cc8b491c39b3e8e5c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
