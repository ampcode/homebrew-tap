class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778822060-ge6e4f6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778822060-ge6e4f6/amp-darwin-arm64"
      sha256 "a72504ce5777b0d24a7a47bd0522efebd3dd5decc78e931735686536e9787c35"
    else
      url "https://static.ampcode.com/cli/0.0.1778822060-ge6e4f6/amp-darwin-x64"
      sha256 "36f94a90d1964d354008ec3c9ef0a5ebb1a11dc11fd86e79e7a8de26f1e361e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778822060-ge6e4f6/amp-linux-arm64"
      sha256 "21a136994d8106d392a5be17b8b927d64cb8a871489d46af9ade64ecad1d0b16"
    else
      url "https://static.ampcode.com/cli/0.0.1778822060-ge6e4f6/amp-linux-x64"
      sha256 "1684e927fdf036e28e7a7ebf76bec2111b66e1420eef7be661b9f28cab1caa74"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
