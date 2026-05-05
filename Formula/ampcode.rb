class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777957191-g23f1e8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777957191-g23f1e8/amp-darwin-arm64"
      sha256 "71d73a9a3a39cb33bacc9db8f39cbffb109bc50bba438faf7c51a2b46a416f81"
    else
      url "https://static.ampcode.com/cli/0.0.1777957191-g23f1e8/amp-darwin-x64"
      sha256 "bb723eb18bed10b61bed07cb1850152d443b218fcd8b5203b1687515743a3b97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777957191-g23f1e8/amp-linux-arm64"
      sha256 "32e758ccdf35a7a99db4b12c78ebd9f7115f2dda0fe5c561ccde5fb4351ea4cd"
    else
      url "https://static.ampcode.com/cli/0.0.1777957191-g23f1e8/amp-linux-x64"
      sha256 "03fde966eb5b851f879eed9bae88e3ac3b1485e7c31603ab8329c60729744ee8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
