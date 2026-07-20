class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784537970-g14377a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784537970-g14377a/amp-darwin-arm64"
      sha256 "7adf57911268b0b0acd7d7d492cf74b5d6141fd7d9aae7f4a2f362de14c93c92"
    else
      url "https://static.ampcode.com/cli/0.0.1784537970-g14377a/amp-darwin-x64"
      sha256 "2f0d24ec6a09fcea6c3658729d4ba4344f3cf0eb3f65588a3d53dbf66e82e293"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784537970-g14377a/amp-linux-arm64"
      sha256 "4c0c326ce9acf85d27196ae504f1ed4f227bbaea0d6e2d4359aa1c8a2a4010bd"
    else
      url "https://static.ampcode.com/cli/0.0.1784537970-g14377a/amp-linux-x64"
      sha256 "b9595dc9bfaa3db52f47b5f617f48727bf82f49d9b8759760cb6821c9dc874c5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
