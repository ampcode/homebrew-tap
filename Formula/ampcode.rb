class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789534422-g10a5ca"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789534422-g10a5ca/amp-darwin-arm64"
      sha256 "6db23e8508bbd34c8305218af6e7ba4783248ecffc8398165e5666ea66a09c01"
    else
      url "https://static.ampcode.com/cli/0.0.1789534422-g10a5ca/amp-darwin-x64"
      sha256 "65516771760b4b04366382a885bdbd67ffcde2152a277c423cae8f5010e94339"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789534422-g10a5ca/amp-linux-arm64"
      sha256 "00e76ff0250149184d5e9fcd93bb236819ae7e024e394360a7148db7c23cf97d"
    else
      url "https://static.ampcode.com/cli/0.0.1789534422-g10a5ca/amp-linux-x64"
      sha256 "bf14137de9fa89adb4fdf0040f89d7f2522302a698040a5096f629c89df62626"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
