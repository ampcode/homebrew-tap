class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776010036-g035c80"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776010036-g035c80/amp-darwin-arm64"
      sha256 "bc54598075411ccb3f9a7c986a45d8cecadfc035a3ee1dd1931066dda331402a"
    else
      url "https://static.ampcode.com/cli/0.0.1776010036-g035c80/amp-darwin-x64"
      sha256 "d4ee33a8872e6363d81764ad77f8aa9685b0ad7392c7519567d96f2f2e5a2275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776010036-g035c80/amp-linux-arm64"
      sha256 "caf2b1f4cf483de8f4c1c45ff62c762642d413f9a3d4d0a30f3f0a9830c01ab7"
    else
      url "https://static.ampcode.com/cli/0.0.1776010036-g035c80/amp-linux-x64"
      sha256 "caa1aa43b460c20b1060d8319c6b06d4e6e5bcc3ab1a3bfa27a2534b99f74552"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
