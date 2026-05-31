class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780221487-g6b52f9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780221487-g6b52f9/amp-darwin-arm64"
      sha256 "0d4997e6f25a87d2e6b096a1a4bfca7b8cb45061388054351de0c2eaca9270e0"
    else
      url "https://static.ampcode.com/cli/0.0.1780221487-g6b52f9/amp-darwin-x64"
      sha256 "800c319d7c4743f8bcce6b01c2e5200abb5d54434edfb6098af78fadd8f078c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780221487-g6b52f9/amp-linux-arm64"
      sha256 "3c2247fba4e450cc645436bcf23830d739fbef0101a65a3204de126719aa0c22"
    else
      url "https://static.ampcode.com/cli/0.0.1780221487-g6b52f9/amp-linux-x64"
      sha256 "6944311b9f7dc61b0a46fed3ebdfbf288c409e39b257e95aa98b4525b1ef3cec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
