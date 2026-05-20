class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779275265-gb9d74f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779275265-gb9d74f/amp-darwin-arm64"
      sha256 "664e385100e6d54bdc2ad8a5c8681720c100ed27109e1e22447c7506c7710a8a"
    else
      url "https://static.ampcode.com/cli/0.0.1779275265-gb9d74f/amp-darwin-x64"
      sha256 "64d7443da4ee01a8579cba65cda0ffecb5de315e6b0c3d06f476a15b832b2ccb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779275265-gb9d74f/amp-linux-arm64"
      sha256 "c609b5711f7c310e9daaa7c3f07c38b89894f2229171fa3d671fdef71f2bddb2"
    else
      url "https://static.ampcode.com/cli/0.0.1779275265-gb9d74f/amp-linux-x64"
      sha256 "40fa15ded7dc2fc69356dcc0a9bc1aa9206e5edbc7fba05bd9908c970a6101e5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
