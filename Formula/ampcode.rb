class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774876048-g0dfb1c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774876048-g0dfb1c/amp-darwin-arm64"
      sha256 "084b7f658bd9f56c79da191cde251a105e62d6fedbfa0b0d6b7d60d2aef62529"
    else
      url "https://static.ampcode.com/cli/0.0.1774876048-g0dfb1c/amp-darwin-x64"
      sha256 "3f27d190e6e3538eef66aacc1229b0d57cbffcabe2f1dc2ce77ac1d8f6d19360"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774876048-g0dfb1c/amp-linux-arm64"
      sha256 "afa44d3c6ae3319240a36262c206f220ddee20da01240ddb8e1c051f4096099c"
    else
      url "https://static.ampcode.com/cli/0.0.1774876048-g0dfb1c/amp-linux-x64"
      sha256 "6bcef8d2cc7e3d8eb727f4fe5860424bd4698b8253f28029881380f8c7e19427"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
