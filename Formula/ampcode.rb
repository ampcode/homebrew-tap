class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780865828-g2a6944"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780865828-g2a6944/amp-darwin-arm64"
      sha256 "cdb003f97d743f850e0b8f1b60103c62bc6abdd2ab507701b074b5ba7d5c6c2b"
    else
      url "https://static.ampcode.com/cli/0.0.1780865828-g2a6944/amp-darwin-x64"
      sha256 "9b7ba23f2e5f5a67b307fd46ac2abd8cfb22a458d409a82ba30e30683808fbed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780865828-g2a6944/amp-linux-arm64"
      sha256 "dd6543d79e0641d23cb24eeaa03bfd1da79ef0c25dc7f56af01ef3080c6fb11d"
    else
      url "https://static.ampcode.com/cli/0.0.1780865828-g2a6944/amp-linux-x64"
      sha256 "ced6ec8d8d7fa7a1d9dbb2f12ef4630eabb4e1179a9b046adb2bbd45c814dd02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
