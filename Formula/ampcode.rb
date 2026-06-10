class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781070497-g623755"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781070497-g623755/amp-darwin-arm64"
      sha256 "99c6044498e2e10a60dd5413627d4efc91c6091752f05f2a5777d2629a566b97"
    else
      url "https://static.ampcode.com/cli/0.0.1781070497-g623755/amp-darwin-x64"
      sha256 "afda0d9f309ef797c0851e5d3ccfc6b2d4e755ad763065d955e54fc34553028c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781070497-g623755/amp-linux-arm64"
      sha256 "378c3f1f0bc8040705b78d2fa04b7bf44d4f6620ded16eff7dfef46e682c377a"
    else
      url "https://static.ampcode.com/cli/0.0.1781070497-g623755/amp-linux-x64"
      sha256 "3656c3f7e84768a2975abc5be51dc517517c5ccde62c739f835e5d433f2dea88"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
