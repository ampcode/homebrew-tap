class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776600313-g13eef6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776600313-g13eef6/amp-darwin-arm64"
      sha256 "6ec655ca0da8d8f512b1f02fb1cab35707305863fb19794f65f8b3e028f301e3"
    else
      url "https://static.ampcode.com/cli/0.0.1776600313-g13eef6/amp-darwin-x64"
      sha256 "2295a133b2778987b53584dc46e34f908647cd2a4ac16b34befa9bb1e64e6ebf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776600313-g13eef6/amp-linux-arm64"
      sha256 "3d32f331a6c896aa1a8f41727079aed57c428032d9cb0ecba4ad395a23acc25c"
    else
      url "https://static.ampcode.com/cli/0.0.1776600313-g13eef6/amp-linux-x64"
      sha256 "85db05b81bc7fbd491914c88274a5dc0b77148b836b3d6b0adc30c273b5ecc3e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
