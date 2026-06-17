class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781686288-g549e4a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781686288-g549e4a/amp-darwin-arm64"
      sha256 "d5638ef8c7f40fbddd506582e12b9629c42382373931fcbc3be3a0de5f6a106f"
    else
      url "https://static.ampcode.com/cli/0.0.1781686288-g549e4a/amp-darwin-x64"
      sha256 "2eb5a6c08a7bb6b8ad1d4c70cc185236f2f1a187b396d1d69e818bbaa19be789"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781686288-g549e4a/amp-linux-arm64"
      sha256 "ce88afc1ee9f62d470fae1119b121bc8db3cb2b380ba547ebc20c0800466df39"
    else
      url "https://static.ampcode.com/cli/0.0.1781686288-g549e4a/amp-linux-x64"
      sha256 "b238d4e20717a221f4ca114e4c3ba8e11668b0fba2478a4cee57f86bd2d6f0d1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
