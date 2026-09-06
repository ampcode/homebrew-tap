class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788667243-gdb7abb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788667243-gdb7abb/amp-darwin-arm64"
      sha256 "6de98fffb5f542c8e26a64521eed8f5d3dda4798c6955959414195c2dba6596f"
    else
      url "https://static.ampcode.com/cli/0.0.1788667243-gdb7abb/amp-darwin-x64"
      sha256 "e05b2bc220f83a349ac68c6b818c497ccc2476b6d35c6475ddbb959c4fcc0461"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788667243-gdb7abb/amp-linux-arm64"
      sha256 "615e15ec2031c5d1a9e83c47b9503c37ca75cf75327086b2863fa2a1cb37e201"
    else
      url "https://static.ampcode.com/cli/0.0.1788667243-gdb7abb/amp-linux-x64"
      sha256 "b2c86c4a248dffc2d8bc13118a6e50c1b5121b357e6282b3a03cf8899a3169a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
