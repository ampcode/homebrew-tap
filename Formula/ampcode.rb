class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794283240-gd5964f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794283240-gd5964f/amp-darwin-arm64"
      sha256 "42063d2e2998035adf0fe488721123716acecc023e01ce2bddc778f4538caabb"
    else
      url "https://static.ampcode.com/cli/0.0.1794283240-gd5964f/amp-darwin-x64"
      sha256 "0af71c6cdc93ea6b7cfa6a9f8ac1ead7249ea47fb9957af92cd45cdaded4a02f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794283240-gd5964f/amp-linux-arm64"
      sha256 "091ddb7df741557d30442aa4de0e4df0e69ded0429de31abac674aeaee1e0480"
    else
      url "https://static.ampcode.com/cli/0.0.1794283240-gd5964f/amp-linux-x64"
      sha256 "df54068ec1d1091bb154014cba83ec41c83ae1e89e32b3907107b58bb48f80c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
