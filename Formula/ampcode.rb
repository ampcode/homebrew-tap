class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794996340-gd2376a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794996340-gd2376a/amp-darwin-arm64"
      sha256 "a4567b66d110f66233557076937fb66db92504664f5e78f0d8d940e16a0099c8"
    else
      url "https://static.ampcode.com/cli/0.0.1794996340-gd2376a/amp-darwin-x64"
      sha256 "9f674f113928a5f322c2af5e897499e2145a4cd3d2ee87259074dda7a63c1dd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794996340-gd2376a/amp-linux-arm64"
      sha256 "c5c399c8611bd75b772c17a374f0f45166fa2d6bfe7eca0b8d8a4fd58dce2c3d"
    else
      url "https://static.ampcode.com/cli/0.0.1794996340-gd2376a/amp-linux-x64"
      sha256 "735aba45c18d69902392576141bdf17e3360f17276e94adddff4b35c979cf3a3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
