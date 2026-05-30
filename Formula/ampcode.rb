class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780100432-ge69f4e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780100432-ge69f4e/amp-darwin-arm64"
      sha256 "75a244d1d6b6d3019b6231d9c6e07c02b765476c217daa75bb00cec4bf3d91c1"
    else
      url "https://static.ampcode.com/cli/0.0.1780100432-ge69f4e/amp-darwin-x64"
      sha256 "030f5d5ee04be5ea982dae4e3593774a4fa2ac38987d2541ae582219fe74aa59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780100432-ge69f4e/amp-linux-arm64"
      sha256 "f84594aee05efb421ddf1044791d49193fa065f0a1da92b72c04e6352b87645e"
    else
      url "https://static.ampcode.com/cli/0.0.1780100432-ge69f4e/amp-linux-x64"
      sha256 "bdd1ef9c8de63d2985d61aa896145bd9fd091cf4d088f27c88c865cbf8693f00"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
