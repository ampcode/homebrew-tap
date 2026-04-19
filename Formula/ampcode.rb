class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776557243-g13eef6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776557243-g13eef6/amp-darwin-arm64"
      sha256 "d672597baf665ebee0dec88c9f7afa9c2e4f21be3f1ec57c1f7c990ff2be5920"
    else
      url "https://static.ampcode.com/cli/0.0.1776557243-g13eef6/amp-darwin-x64"
      sha256 "52112b64cccb207d799f8d5c7fd9bcdee83c73f511cf26a34646c0b8fe4cac59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776557243-g13eef6/amp-linux-arm64"
      sha256 "bacf5b829dcaf340d5e1491eaa562656f33ce52d289fdf352c66e23236c26e20"
    else
      url "https://static.ampcode.com/cli/0.0.1776557243-g13eef6/amp-linux-x64"
      sha256 "bd4fb7f768476a2907ea43be0dfc6f66ff82db45f20b5cfc9eb24cd3f3f88161"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
